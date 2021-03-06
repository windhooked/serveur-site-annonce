package models

import (
	"database/sql"
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"log"
	"regexp"

	"github.com/astaxie/beego/context"
	"github.com/badoux/checkmail"
	"github.com/satori/go.uuid"
	"golang.org/x/crypto/bcrypt"
	"golang.org/x/oauth2"
)

const (
	emailAuthTypeID  = 1
	googleAuthTypeID = 2
	fbAuthTypeID     = 3
)

// RegistrationError custon error struct for request error response
type RegistrationError struct {
	ErrMessage string `json:"err"`
	ErrCode    int    `json:"errCode"`
}

type Oauth2Config struct {
	Google, Facebook *oauth2.Config
}

//
// type OauthCredentiel struct {
// 	CID     string
// 	CSecret string
// }

type UserData struct {
	ID            int    `json:"id"`
	AccountTypeID int    `json:"accountType"`
	Name          string `json:"name"`
	ThirdPartyID  string `json:"thirdPartyID"` // unique identifier from third party
	Email         string `json:"email"`
	AuthTypeID    int    `json:"authTypeID"`
	Password      string `json:"password"`
	PictureURL    string `json:"pictureURL"`
}

func (u *UserData) EmailAuth(c *context.Context) (err error) {
	if u.checkAuthState() {
		fmt.Println("email login here", u.AuthTypeID)
		err = u.emailLogin()
		if err != nil {
			c.Output.SetStatus(400)
			return
		}
	} else {
		fmt.Println("email registration here")
		err = u.emailRegistration()
		if err != nil {
			c.Output.SetStatus(500)
			return
		}
	}

	err = u.CreateSession(c)
	if err != nil {
		c.Output.SetStatus(500)
		return
	}
	return
}

// checkAuthState return true if user is already registred and false if not
func (u *UserData) checkAuthState() bool {
	err := Db.QueryRow(
		`SELECT user_id
		FROM user_account  WHERE email=$1;`,
		u.Email).Scan(&u.ID)
	if err != nil {
		log.Println(err)
		return false
	}
	return true
}

func (u *UserData) emailRegistration() (err error) {
	if u.AuthTypeID != emailAuthTypeID {
		return errors.New("This method is only for email registration")
	}

	var stmt *sql.Stmt
	var hashedPassword []byte
	stmt, err = Db.Prepare("INSERT INTO user_account (name, email, password, auth_type_id, third_party_id) VALUES ($1, $2, $3, $4, $5) RETURNING user_id")
	if err != nil {
		return
	}
	defer stmt.Close()

	hashedPassword, err = bcrypt.GenerateFromPassword([]byte(u.Password), 14)
	if err != nil {
		return
	}

	err = stmt.QueryRow(u.Name, u.Email, string(hashedPassword), u.AuthTypeID, string(u.ThirdPartyID)).Scan(&u.ID)
	if err != nil {
		return
	}
	return
}

func (u *UserData) oauth2Registration() (err error) {
	if u.AuthTypeID == emailAuthTypeID {
		return errors.New("This method is only for oauth registration")
	}

	var stmt *sql.Stmt
	stmt, err = Db.Prepare("INSERT INTO user_account (name, email, auth_type_id, third_party_id, profile_picture) VALUES ($1, $2, $3, $4, $5) RETURNING user_id")
	if err != nil {
		return
	}
	defer stmt.Close()

	err = stmt.QueryRow(u.Name, u.Email, u.AuthTypeID, string(u.ThirdPartyID), u.PictureURL).Scan(&u.ID)
	if err != nil {
		return
	}
	return
}

// ValidateRegistration methods check if data provided by user are valid for
// registration
func (u *UserData) validateEmailRegistration() (err error) {

	if u.AuthTypeID != emailAuthTypeID {
		// regErr.ErrCode = 4
		// regErr.ErrMessage = "No need to validate data for facebook and google users"
		err = errors.New("No need to validate data for facebook and google users")
		return
	}
	// check user name
	re := regexp.MustCompile("^[a-zA-Z][A-Za-z0-9_]*$")

	if ok := re.MatchString(u.Name); !ok || len(u.Name) < 3 {
		// regErr.ErrCode = 1
		// regErr.ErrMessage = "username must at least be 3 characteres long"
		err = errors.New("username must at least be 3 characteres long")
		return
	}

	// check user's email
	err = checkmail.ValidateFormat(u.Email)
	if err != nil {
		return
	}

	// err = checkmail.ValidateHost(u.Email)
	// if err != nil {
	// 	return
	// }
	// check user's password
	if len(u.Password) < 4 {
		// regErr.ErrCode = 3
		// regErr.ErrMessage = "invalid password"
		err = errors.New("invalid password")
		return
	}

	return
}

func (u *UserData) login() (err error) {
	return u.emailLogin()
	// return fmt.Errorf("wrong login input")
}

func (u *UserData) emailLogin() (err error) {
	var dbUser UserData

	err = Db.QueryRow("SELECT user_id, email, password FROM user_account WHERE email=$1", u.Email).Scan(&dbUser.ID, &dbUser.Email, &dbUser.Password)
	if err != nil {
		return
	}

	err = bcrypt.CompareHashAndPassword([]byte(dbUser.Password), []byte(u.Password))
	if err != nil {
		return
	}
	u.ID = dbUser.ID
	return
}

func GetGoogleLoginURL(state string) string {
	return oauth2Config.Google.AuthCodeURL(state)
}

func GetGoogleUserData(code string) (user UserData, err error) {
	tok, err := oauth2Config.Google.Exchange(oauth2.NoContext, code)
	if err != nil {
		return
	}

	client := oauth2Config.Google.Client(oauth2.NoContext, tok)

	resp, err := client.Get("https://www.googleapis.com/oauth2/v3/userinfo")
	if err != nil {
		return
	}
	defer resp.Body.Close()
	resBody, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		return
	}

	gUser := struct {
		Sub       string `json:"sub"`
		Name      string `json:"name"`
		GivenName string `json:"given_name"`
		Email     string `json:"email"`
		Picture   string `json:"picture"`
	}{}
	log.Println("google user = ", string(resBody))
	err = json.Unmarshal(resBody, &gUser)
	if err != nil {
		return
	}
	user = UserData{
		Name:         gUser.GivenName,
		Email:        gUser.Email,
		PictureURL:   gUser.Picture,
		AuthTypeID:   googleAuthTypeID,
		ThirdPartyID: gUser.Sub,
	}
	// log.Println("Resp body: ", string(resBody))
	return
}

func (u *UserData) Oauth2Login(c *context.Context) (err error) {
	if !u.checkAuthState() {
		err = u.oauth2Registration()
		if err != nil {
			return
		}
	}

	err = u.CreateSession(c)
	if err != nil {
		c.Output.SetStatus(500)
		return
	}
	return
}

func GetFbkLoginURL(state string) string {
	return oauth2Config.Facebook.AuthCodeURL(state)
}

func GetFbkUserData(code string) (fbUser UserData, err error) {
	tok, err := oauth2Config.Facebook.Exchange(oauth2.NoContext, code)
	if err != nil {
		return
	}

	client := oauth2Config.Facebook.Client(oauth2.NoContext, tok)

	resp, err := client.Get("https://graph.facebook.com/me?fields=id,name,email,picture&access_token=" + tok.AccessToken)
	if err != nil {
		return
	}
	defer resp.Body.Close()
	resBody, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		return
	}
	log.Println(string(resBody))
	u := struct {
		ID    string `json:"id"`
		Email string `json:"email"`
		Name  string `json:"name"`
	}{}
	err = json.Unmarshal(resBody, &u)
	if err != nil {
		return
	}
	fbUser = UserData{
		Name:         u.Name,
		Email:        u.Email,
		ThirdPartyID: u.ID,
		PictureURL:   "https://graph.facebook.com/" + u.ID + "/picture?type=normal",
		AuthTypeID:   fbAuthTypeID,
	}
	return
}

func (u *UserData) CreateSession(c *context.Context) (err error) {
	var stmt *sql.Stmt
	stmt, err = Db.Prepare("INSERT INTO session (user_id, access_token) VALUES ($1, $2)")
	if err != nil {
		return
	}
	accessToken := newAccessToken()
	_, err = stmt.Exec(u.ID, accessToken)
	if err != nil {
		return
	}
	// set secure cookie for 1 year lifetime
	c.SetSecureCookie(CookieSecret, UserCookie, accessToken, 86400*365)
	return
}

func (u *UserData) Get(accessToken string) (err error) {
	err = Db.QueryRow("SELECT user_id FROM session WHERE access_token=$1", accessToken).Scan(&u.ID)
	if err != nil {
		return
	}
	err = Db.QueryRow("SELECT name, email, profile_picture FROM user_account WHERE user_id=$1", u.ID).Scan(&u.Name, &u.Email, &u.PictureURL)
	if err != nil {
		return
	}
	return
}

// must be also delete session row on database
func DestroySession(c *context.Context) {
	userCookieValue, _ := c.GetSecureCookie(CookieSecret, UserCookie)
	err := Db.QueryRow("DELETE FROM session WHERE access_token=$1;", userCookieValue).Scan()
	if err != nil {
		log.Println("Failled to delete session: ", err)
	}
	c.SetSecureCookie(CookieSecret, UserCookie, "")
}

func newAccessToken() string {
	u4 := uuid.Must(uuid.NewV4())
	return u4.String()
}
