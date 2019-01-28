--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-28 22:56:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3110 (class 0 OID 16763)
-- Dependencies: 202
-- Data for Name: account_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_state (account_state_id, description) FROM stdin;
1	activated
2	activation-required
3	disabled
\.


--
-- TOC entry 3112 (class 0 OID 16771)
-- Dependencies: 204
-- Data for Name: account_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_type (account_type_id, description) FROM stdin;
1	regular
2	pro
\.


--
-- TOC entry 3127 (class 0 OID 16916)
-- Dependencies: 219
-- Data for Name: advert; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advert (advert_id, title, description, advertiser_id, category_id, condition_id, city_id, advert_state_id, advert_type_id, price, created_at, map_position, pictures_urls, attribute, thumbnails_urls) FROM stdin;
8	htc one e8	i sell my phone htc one e8 	30	13	\N	1	1	1	15000	2019-01-28 11:23:35.663795	\N	[{"URL":"http://localhost:8080/files/640x480/7480413214088189610.jpg","thumbnailURL":"http://localhost:8080/files/240x180/7480413214088189610.jpg"},{"URL":"http://localhost:8080/files/640x480/7640814767034722870.jpg","thumbnailURL":"http://localhost:8080/files/240x180/7640814767034722870.jpg"},{"URL":"http://localhost:8080/files/640x480/7469376937874642991.jpg","thumbnailURL":"http://localhost:8080/files/240x180/7469376937874642991.jpg"}]	{}	{http://localhost:8080/files/240x180/7480413214088189610.jpg,http://localhost:8080/files/240x180/7640814767034722870.jpg,http://localhost:8080/files/240x180/7469376937874642991.jpg}
9	Mercedes benz	en vente un belle mercedes benz	30	19	\N	2	1	1	4500168	2019-01-28 11:39:37.62955	\N	[{"URL":"http://localhost:8080/files/640x480/2772250950626686904.png","thumbnailURL":"http://localhost:8080/files/240x180/2772250950626686904.png"},{"URL":"http://localhost:8080/files/640x480/1860555432612131242.jpg","thumbnailURL":"http://localhost:8080/files/240x180/1860555432612131242.jpg"}]	{"carKm": "1500000", "carYear": 2003, "carBrand": "MB"}	{http://localhost:8080/files/240x180/2772250950626686904.png,http://localhost:8080/files/240x180/1860555432612131242.jpg}
10	T-shirt adidas	vente de t-shirt adidas femmes	30	30	\N	4	1	1	1500	2019-01-28 11:51:33.800729	\N	[{"URL":"http://localhost:8080/files/640x480/440316385027279878.jpg","thumbnailURL":"http://localhost:8080/files/240x180/440316385027279878.jpg"},{"URL":"http://localhost:8080/files/640x480/16014637013971081696.jpg","thumbnailURL":"http://localhost:8080/files/240x180/16014637013971081696.jpg"}]	{"genderId": 1}	{http://localhost:8080/files/240x180/440316385027279878.jpg,http://localhost:8080/files/240x180/16014637013971081696.jpg}
11	T-shirt adidas	recherche un t-shirt adidas	30	30	\N	39	1	2	0	2019-01-28 11:53:17.601692	\N	[{"URL":"http://localhost:8080/files/640x480/12589534048301244192.jpg","thumbnailURL":"http://localhost:8080/files/240x180/12589534048301244192.jpg"}]	{}	{http://localhost:8080/files/240x180/12589534048301244192.jpg}
12	Audi a3 neuve	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidas	30	19	\N	26	1	1	40000000	2019-01-28 11:56:52.057788	\N	[{"URL":"http://localhost:8080/files/640x480/2143126443797261843.jpg","thumbnailURL":"http://localhost:8080/files/240x180/2143126443797261843.jpg"},{"URL":"http://localhost:8080/files/640x480/14489785586377914241.jpg","thumbnailURL":"http://localhost:8080/files/240x180/14489785586377914241.jpg"}]	{"carKm": "48500", "carYear": 2019, "carBrand": "AUDI"}	{http://localhost:8080/files/240x180/2143126443797261843.jpg,http://localhost:8080/files/240x180/14489785586377914241.jpg}
13	Ford focus 	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidas	30	19	\N	46	1	1	78000	2019-01-28 11:58:51.071692	\N	[{"URL":"http://localhost:8080/files/640x480/2143126443797261843.jpg","thumbnailURL":"http://localhost:8080/files/240x180/2143126443797261843.jpg"},{"URL":"http://localhost:8080/files/640x480/14489785586377914241.jpg","thumbnailURL":"http://localhost:8080/files/240x180/14489785586377914241.jpg"}]	{"carKm": "78520000", "carYear": 1995, "carBrand": "FORD"}	{http://localhost:8080/files/240x180/2143126443797261843.jpg,http://localhost:8080/files/240x180/14489785586377914241.jpg}
14	Ford fiesta	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasvvvv	30	19	\N	34	1	1	4500000	2019-01-28 12:01:35.127915	\N	[{"URL":"http://localhost:8080/files/640x480/3855095553371761356.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3855095553371761356.jpg"},{"URL":"http://localhost:8080/files/640x480/15094578976759072176.jpg","thumbnailURL":"http://localhost:8080/files/240x180/15094578976759072176.jpg"}]	{"carKm": "450000", "carYear": 2003, "carBrand": "FORD"}	{http://localhost:8080/files/240x180/3855095553371761356.jpg,http://localhost:8080/files/240x180/15094578976759072176.jpg}
15	Audi car to sell	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasvvvv	30	19	\N	11	1	1	7800000	2019-01-28 12:03:59.148829	\N	[{"URL":"http://localhost:8080/files/640x480/16477134501520466746.jpg","thumbnailURL":"http://localhost:8080/files/240x180/16477134501520466746.jpg"},{"URL":"http://localhost:8080/files/640x480/15094578976759072176.jpg","thumbnailURL":"http://localhost:8080/files/240x180/15094578976759072176.jpg"}]	{"carKm": "785000", "carYear": 2008, "carBrand": "AUDI"}	{http://localhost:8080/files/240x180/16477134501520466746.jpg,http://localhost:8080/files/240x180/15094578976759072176.jpg}
16	samsung galaxy note 	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasvvvv	30	13	\N	20	1	1	40000	2019-01-28 12:07:42.773934	\N	[{"URL":"http://localhost:8080/files/640x480/3829156176175377070.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3829156176175377070.jpg"},{"URL":"http://localhost:8080/files/640x480/18081676385789534663.jpg","thumbnailURL":"http://localhost:8080/files/240x180/18081676385789534663.jpg"}]	{}	{http://localhost:8080/files/240x180/3829156176175377070.jpg,http://localhost:8080/files/240x180/18081676385789534663.jpg}
17	samsung galaxy	T-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasT-shirt adidasvvvv	30	13	\N	18	1	1	35000	2019-01-28 12:10:16.008228	\N	[{"URL":"http://localhost:8080/files/640x480/18081676385789534663.jpg","thumbnailURL":"http://localhost:8080/files/240x180/18081676385789534663.jpg"},{"URL":"http://localhost:8080/files/640x480/3829156176175377070.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3829156176175377070.jpg"}]	{}	{http://localhost:8080/files/240x180/18081676385789534663.jpg,http://localhost:8080/files/240x180/3829156176175377070.jpg}
18	asus rog 450	asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450	30	11	\N	14	1	1	500000	2019-01-28 12:13:51.676936	\N	[{"URL":"http://localhost:8080/files/640x480/17627493558245744602.jpg","thumbnailURL":"http://localhost:8080/files/240x180/17627493558245744602.jpg"},{"URL":"http://localhost:8080/files/640x480/5317211526770565100.jpg","thumbnailURL":"http://localhost:8080/files/240x180/5317211526770565100.jpg"}]	{}	{http://localhost:8080/files/240x180/17627493558245744602.jpg,http://localhost:8080/files/240x180/5317211526770565100.jpg}
19	Asus ordinateur portable 	asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450asus rog 450vvv	30	11	\N	4	1	1	150000	2019-01-28 12:15:11.070282	\N	[{"URL":"http://localhost:8080/files/640x480/5317211526770565100.jpg","thumbnailURL":"http://localhost:8080/files/240x180/5317211526770565100.jpg"},{"URL":"http://localhost:8080/files/640x480/9965287171978122157.jpg","thumbnailURL":"http://localhost:8080/files/240x180/9965287171978122157.jpg"}]	{}	{http://localhost:8080/files/240x180/5317211526770565100.jpg,http://localhost:8080/files/240x180/9965287171978122157.jpg}
36	Toyota 	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commercesELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commercesELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	19	\N	39	1	1	7000000	2019-01-28 13:53:20.774367	\N	[{"URL":"http://localhost:8080/files/640x480/3855095553371761356.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3855095553371761356.jpg"},{"URL":"http://localhost:8080/files/640x480/15094578976759072176.jpg","thumbnailURL":"http://localhost:8080/files/240x180/15094578976759072176.jpg"}]	{"carKm": "1500000", "carYear": 2008, "carBrand": "TOYOTA"}	{http://localhost:8080/files/240x180/3855095553371761356.jpg,http://localhost:8080/files/240x180/15094578976759072176.jpg}
37	Nintendo switch noir	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	15	\N	40	1	1	145000	2019-01-28 14:14:28.292886	\N	[{"URL":"http://localhost:8080/files/640x480/4800087505029243655.jpg","thumbnailURL":"http://localhost:8080/files/240x180/4800087505029243655.jpg"},{"URL":"http://localhost:8080/files/640x480/7331437523571010535.jpg","thumbnailURL":"http://localhost:8080/files/240x180/7331437523571010535.jpg"}]	{}	{http://localhost:8080/files/240x180/4800087505029243655.jpg,http://localhost:8080/files/240x180/7331437523571010535.jpg}
38	Moto noir	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	20	\N	14	1	1	200000	2019-01-28 14:15:52.825447	\N	[{"URL":"http://localhost:8080/files/640x480/3686343370331643169.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3686343370331643169.jpg"},{"URL":"http://localhost:8080/files/640x480/4291418235689623120.jpg","thumbnailURL":"http://localhost:8080/files/240x180/4291418235689623120.jpg"},{"URL":"http://localhost:8080/files/640x480/3293485500522539699.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3293485500522539699.jpg"}]	{"motoKm": "150000", "motoYear": 1983}	{http://localhost:8080/files/240x180/3686343370331643169.jpg,http://localhost:8080/files/240x180/4291418235689623120.jpg,http://localhost:8080/files/240x180/3293485500522539699.jpg}
40	Xbox one noir	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	15	\N	24	1	1	140000	2019-01-28 14:24:56.693499	\N	[{"URL":"http://localhost:8080/files/640x480/2759922131032413934.jpg","thumbnailURL":"http://localhost:8080/files/240x180/2759922131032413934.jpg"},{"URL":"http://localhost:8080/files/640x480/12528362640303819285.jpg","thumbnailURL":"http://localhost:8080/files/240x180/12528362640303819285.jpg"}]	{}	{http://localhost:8080/files/240x180/2759922131032413934.jpg,http://localhost:8080/files/240x180/12528362640303819285.jpg}
39	Nintendo switch rouge	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	15	\N	20	1	1	154000	2019-01-28 14:16:57.288103	\N	[{"URL":"http://localhost:8080/files/640x480/5291272149574180814.jpg","thumbnailURL":"http://localhost:8080/files/240x180/5291272149574180814.jpg"},{"URL":"http://localhost:8080/files/640x480/7331437523571010535.jpg","thumbnailURL":"http://localhost:8080/files/240x180/7331437523571010535.jpg"}]	{}	{http://localhost:8080/files/240x180/5291272149574180814.jpg,http://localhost:8080/files/240x180/7331437523571010535.jpg}
42	Depannage installation materiels	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\nCamions et équipements spéciaux\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 14:40:35.263726	\N	[]	{"serviceId": 1}	\N
43	Camions et équipements spéciaux	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\nMatériels et accessoires informatiques\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\n\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 15:18:54.630953	\N	[]	{"serviceId": 1}	\N
44	Matériels et accessoires informatiques	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\n\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\n\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 15:19:14.834925	\N	[]	{"serviceId": 1}	\N
45	Matériels et accessoires informatiques	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\n\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\n\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 15:38:47.030361	\N	[{"URL":"http://localhost:8080/files/640x480/9965287171978122157.jpg","thumbnailURL":"http://localhost:8080/files/240x180/9965287171978122157.jpg"}]	{"serviceId": 1}	{http://localhost:8080/files/240x180/9965287171978122157.jpg}
46	Matériels et accessoires informatiques	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\n\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\n\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 16:51:03.375859	\N	[{"URL":"http://localhost:8080/files/640x480/9965287171978122157.jpg","thumbnailURL":"http://localhost:8080/files/240x180/9965287171978122157.jpg"}]	{"serviceId": 1}	{http://localhost:8080/files/240x180/9965287171978122157.jpg}
47	Matériels et accessoires informatiques	ELECTRONIQUE ET MULTIMÉDIA\nOrdinateurs de bureaux\nOrdinateurs portables\n\nTéléphones\nTablettes et livres électroniques\nJeux vidéos, consoles et logiciels\nTélévision\nAudio et vidéo\nAppareils photo et caméra\nVEHICULES\nVoitures\nMotos\nVélos\n\nPièces et accessoires\nMAISON ET JARDIN\nMeubles\nDécorations\nElectroménager\nBricolage\nJardin et outils de jardinage\nUstensiles et équipements de cuisine\nHABILLEMENT ET BIEN-ETRE\nVêtements\nChaussures\nMontres et bijoux\nSacs et accessoires\nProduits cosmetiques\nÉquipements pour enfants et bébés\nSERVICES\nÉVÉNEMENTS\nConcerts et spectacles\nFêtes et soirées\nConventions et séminaires\nExpositions, visites\nAutres evènements\nPromotions\nEMPLOIS\nOffre d’emploi\nDemande d’emploi\nOffre de stage\nDemande de stage\nLOISIRS ET DIVERTISSEMENTS\nLivres, revues et magazines\nInstruments de musique\nSports et loisirs\nVins et gastronomies\nCd, dvd, films\nIMMOBILIER\nVentes immobilières\nLocations immobilières\nColocations\nBureaux et commerces	30	5	\N	11	1	\N	175000	2019-01-28 17:36:44.237844	\N	[{"URL":"http://localhost:8080/files/640x480/9965287171978122157.jpg","thumbnailURL":"http://localhost:8080/files/240x180/9965287171978122157.jpg"}]	{"serviceId": 7}	{http://localhost:8080/files/240x180/9965287171978122157.jpg}
49	Location studio	je recherche un motorola pomelo green	30	67	\N	19	1	2	0	2019-01-28 17:50:42.670713	\N	[{"URL":"http://localhost:8080/files/640x480/3686343370331643169.jpg","thumbnailURL":"http://localhost:8080/files/240x180/3686343370331643169.jpg"}]	{"housingTypeId": 1, "housingRoomNumber": "2"}	{http://localhost:8080/files/240x180/3686343370331643169.jpg}
51	Location maison	location studio a cocody	30	68	\N	5	1	8	75000	2019-01-28 18:07:54.694049	\N	[{"URL":"http://localhost:8080/files/640x480/6703022467480637906.png","thumbnailURL":"http://localhost:8080/files/240x180/6703022467480637906.png"}]	{"housingTypeId": 1, "housingRoomNumber": "5"}	{http://localhost:8080/files/240x180/6703022467480637906.png}
52	Location maison	location studio a cocody	30	68	\N	5	1	8	75000	2019-01-28 18:08:26.975839	\N	[{"URL":"http://localhost:8080/files/640x480/6703022467480637906.png","thumbnailURL":"http://localhost:8080/files/240x180/6703022467480637906.png"}]	{"housingTypeId": 1, "housingRoomNumber": "5"}	{http://localhost:8080/files/240x180/6703022467480637906.png}
53	Location nintendo switch	location studio a cocody	30	5	\N	5	1	5	1000	2019-01-28 18:09:22.068446	\N	[{"URL":"http://localhost:8080/files/640x480/6703022467480637906.png","thumbnailURL":"http://localhost:8080/files/240x180/6703022467480637906.png"}]	{"serviceId": 14}	{http://localhost:8080/files/240x180/6703022467480637906.png}
54	Coursier a moto	événemen tsévénementsé vénementsévé nementsévé  nements	30	58	\N	13	1	6	100000	2019-01-28 18:10:53.870394	\N	[]	{}	\N
55	Agent de sécurité	événemen tsévénementsé vénementsévé nementsévé  nements	30	58	\N	4	1	6	300000	2019-01-28 18:14:31.754303	\N	[]	{}	\N
56	Rolex neuve	Montre rolex toute neuve	30	32	\N	5	1	1	140000	2019-01-28 22:41:49.889271	\N	[{"URL":"http://localhost:8080/files/640x480/2656516523663886015.jpg","thumbnailURL":"http://localhost:8080/files/240x180/2656516523663886015.jpg"},{"URL":"http://localhost:8080/files/640x480/17616718788487935768.jpg","thumbnailURL":"http://localhost:8080/files/240x180/17616718788487935768.jpg"}]	{"genderId": 1}	{http://localhost:8080/files/240x180/2656516523663886015.jpg,http://localhost:8080/files/240x180/17616718788487935768.jpg}
57	Montre homme	Montre homme	30	32	\N	5	1	1	50000	2019-01-28 22:42:53.596576	\N	[]	{"genderId": 2}	\N
58	Montre de luxe	Montre homme	30	32	\N	5	1	1	50000	2019-01-28 22:43:14.42441	\N	[{"URL":"http://localhost:8080/files/640x480/17616718788487935768.jpg","thumbnailURL":"http://localhost:8080/files/240x180/17616718788487935768.jpg"},{"URL":"http://localhost:8080/files/640x480/2656516523663886015.jpg","thumbnailURL":"http://localhost:8080/files/240x180/2656516523663886015.jpg"}]	{"genderId": 2}	{http://localhost:8080/files/240x180/17616718788487935768.jpg,http://localhost:8080/files/240x180/2656516523663886015.jpg}
59	Liseuse kindle	Liseuse kindle en excellent etat	30	14	\N	8	1	1	70000	2019-01-28 22:44:14.527135	\N	[{"URL":"http://localhost:8080/files/640x480/6375527449506005986.jpg","thumbnailURL":"http://localhost:8080/files/240x180/6375527449506005986.jpg"},{"URL":"http://localhost:8080/files/640x480/13964337125384998921.jpg","thumbnailURL":"http://localhost:8080/files/240x180/13964337125384998921.jpg"}]	{}	{http://localhost:8080/files/240x180/6375527449506005986.jpg,http://localhost:8080/files/240x180/13964337125384998921.jpg}
60	Liveuse kobo	Liseuse kindle en excellent etat	30	14	\N	8	1	1	70000	2019-01-28 22:44:38.648571	\N	[{"URL":"http://localhost:8080/files/640x480/6375527449506005986.jpg","thumbnailURL":"http://localhost:8080/files/240x180/6375527449506005986.jpg"},{"URL":"http://localhost:8080/files/640x480/13964337125384998921.jpg","thumbnailURL":"http://localhost:8080/files/240x180/13964337125384998921.jpg"}]	{}	{http://localhost:8080/files/240x180/6375527449506005986.jpg,http://localhost:8080/files/240x180/13964337125384998921.jpg}
61	Location villa	Location villa 7 pices	30	68	\N	19	1	8	400000	2019-01-28 22:46:04.53672	\N	[{"URL":"http://localhost:8080/files/640x480/1342368545980499035.jpg","thumbnailURL":"http://localhost:8080/files/240x180/1342368545980499035.jpg"}]	{"housingTypeId": 1, "housingRoomNumber": "7"}	{http://localhost:8080/files/240x180/1342368545980499035.jpg}
62	Vente d'immeuble	Vente d'un immeuble 	30	67	\N	4	1	8	100000000	2019-01-28 22:47:40.650796	\N	[{"URL":"http://localhost:8080/files/640x480/12528886103206857652.jpg","thumbnailURL":"http://localhost:8080/files/240x180/12528886103206857652.jpg"},{"URL":"http://localhost:8080/files/640x480/1342368545980499035.jpg","thumbnailURL":"http://localhost:8080/files/240x180/1342368545980499035.jpg"}]	{"housingTypeId": 1, "housingRoomNumber": "9"}	{http://localhost:8080/files/240x180/12528886103206857652.jpg,http://localhost:8080/files/240x180/1342368545980499035.jpg}
\.


--
-- TOC entry 3125 (class 0 OID 16902)
-- Dependencies: 217
-- Data for Name: advert_condition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advert_condition (condition_id, name) FROM stdin;
1	new
2	used
\.


--
-- TOC entry 3135 (class 0 OID 17015)
-- Dependencies: 227
-- Data for Name: advert_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advert_state (advert_state_id, name) FROM stdin;
1	online
2	offline
3	deleted
\.


--
-- TOC entry 3133 (class 0 OID 17006)
-- Dependencies: 225
-- Data for Name: advert_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advert_type (advert_type_id, name) FROM stdin;
4	Don
3	Troc
1	Offre
2	Demande
5	services
6	emplois
7	événements
8	immobilier
\.


--
-- TOC entry 3146 (class 0 OID 17154)
-- Dependencies: 238
-- Data for Name: alert; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alert (alert_id, owner_id, key_word, category_id, min_price, max_price, advert_type_id, is_active) FROM stdin;
\.


--
-- TOC entry 3108 (class 0 OID 16743)
-- Dependencies: 200
-- Data for Name: auth_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_type (auth_type_id, name) FROM stdin;
1	email
2	google
3	facebook
\.


--
-- TOC entry 3121 (class 0 OID 16868)
-- Dependencies: 213
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (parent_id, category_id, name, path_name, fields) FROM stdin;
7	58	Offre d’emploi	offre_demploi	\N
7	60	Offre de stage	offre_de_stage	\N
3	25	Décorations	decorations	\N
3	26	Electroménager	electromenager	\N
3	27	Bricolage	bricolage	\N
3	28	Jardin et outils de jardinage	jardin_et_outils_de_jardinage	\N
8	64	Sports et loisirs	sports_et_loisirs	\N
4	30	Vêtements	vetements	\N
4	31	Chaussures	chaussures	\N
\N	2	VEHICULES	vehicules	\N
4	32	Montres et bijoux	montres_et_bijoux	\N
5	51	Cours particulier	cours_particulier	\N
6	56	Expositions, visites	expositions_visites	\N
6	57	Autres evènements	autres_evenements	\N
7	59	Demande  d’emploi	demande_demploi	\N
7	61	Demande de stage	demande_de_stage	\N
1	17	Audio et vidéo	audio_et_video	\N
1	14	Tablettes et livres électroniques	tablettes_et_livres_electroniques	\N
1	15	Jeux vidéos, consoles et logiciels	jeux_videos_consoles_et_logiciels	\N
1	18	Appareils photo et caméra	appareils_photo_et_camera	\N
1	12	Matériels et accessoires informatiques	materiels_et_accessoires_informatiques	\N
3	29	Ustensiles et équipements de cuisine	ustensiles_et_equipements_de_cuisine	\N
8	63	Instruments de musique	instruments_de_musique	\N
8	65	Vins et gastronomies	vins_et_gastronomies	\N
8	66	Cd, dvd, films	cd_dvd_films	\N
9	67	Ventes immobilières	ventes_immobilieres	\N
9	68	Locations immobilières	locations_immobilieres	\N
9	69	Colocations	colocations	\N
9	70	Bureaux et commerces	bureaux_et_commerces	\N
5	40	Restauration	restauration	\N
5	48	Réparation	reparation	\N
5	45	Entretien, nettoyage et services domestiques	entretien_nettoyage_et_services_domestiques	\N
6	134	Promotions	promotions	\N
4	34	Produits cosmetiques	produits_cosmetiques	\N
5	35	Traduction	traduction	\N
5	36	Organisation d’evènements	organisation_devenements	\N
5	37	Services immobiliers	services_immobiliers	\N
5	38	Informatiques	informatiques	\N
5	39	Dépannage auto	depannage_auto	\N
5	41	Sécurité	securite	\N
5	44	Beauté, santé	beaute_sante	\N
8	62	Livres, revues et magazines	livres_revues_et_magazines	\N
5	50	Transports	transports	\N
6	55	Conventions et séminaires	conventions_et_seminaires	\N
6	53	Concerts et spectacles	concerts_et_spectacles	\N
6	54	Fêtes et soirées	fetes_et_soirees	\N
4	33	Sacs et accessoires	sacs_et_accessoires	\N
5	42	Associations, bénévolat	associations_benevolat	\N
5	43	Livraison, déménagement	livraison_demenagement	\N
5	46	Formation, cours	formation_cours	\N
5	47	Publicité	publicite	\N
\N	9	IMMOBILIER	immobilier	\N
1	10	Ordinateurs de bureaux	ordinateurs_de_bureaux	\N
1	11	Ordinateurs portables	ordinateurs_portables	\N
1	13	Téléphones	telephones	\N
1	16	Télévision	television	\N
3	24	Meubles	meubles	\N
2	19	Voitures	voitures	\N
2	22	Camions et équipements spéciaux	camions_et_equipements_speciaux	\N
2	20	Motos	motos	\N
2	21	Vélos	velos	\N
2	23	Pièces et accessoires	pieces_et_accessoires	\N
5	49	Autres services	autres_services	\N
5	132	Entretien et nettoyage	entretien_et_nettoyage	\N
5	133	Installation de matériel	installation_de_materiel	\N
\N	6	ÉVÉNEMENTS	evenements	\N
\N	3	MAISON ET JARDIN	maison_et_jardin	\N
\N	4	HABILLEMENT ET BIEN-ETRE	habillement_et_bien_etre	\N
\N	7	EMPLOIS	emplois	\N
\N	5	SERVICES	services	\N
\N	8	LOISIRS ET DIVERTISSEMENTS	loisirs_et_divertissements	\N
\N	1	ELECTRONIQUE ET MULTIMÉDIA	electronique_et_multimedia	\N
4	131	Équipements pour enfants et bébés	equipements_pour_enfants_et_bebes	\N
\.


--
-- TOC entry 3154 (class 0 OID 33139)
-- Dependencies: 246
-- Data for Name: category_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category_field (category_id, form_field_id) FROM stdin;
\.


--
-- TOC entry 3117 (class 0 OID 16800)
-- Dependencies: 209
-- Data for Name: chat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chat (chat_id, advertiser_id, guest_id, chat_state_id) FROM stdin;
\.


--
-- TOC entry 3143 (class 0 OID 17104)
-- Dependencies: 235
-- Data for Name: chat_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chat_state (chat_state_id, name) FROM stdin;
1	active
2	deleted
\.


--
-- TOC entry 3139 (class 0 OID 17037)
-- Dependencies: 231
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (city_id, city_name, district_id, path_name) FROM stdin;
1	Abidjan	1	abidjan
2	Sassandra	2	sassandra
3	Soubré	2	soubre
4	San-Pédro	2	san_pedro
5	Abengourou	3	abengourou
6	Aboisso	3	aboisso
7	Odienné	4	odienne
8	Minignan	4	minignan
9	Gagnoa	5	gagnoa
10	Divo	5	divo
12	Daoukro	6	daoukro
13	Bongouanou	6	bongouanou
14	Dimbokro	6	dimbokro
15	Toumodi	6	toumodi
16	Agboville	7	agboville
17	Dabou	7	dabou
18	Adzopé	7	adzope
19	Guiglo	8	guiglo
20	Duékoué	8	duekoue
21	Man	8	man
22	Daloa	9	daloa
23	Bouaflé	9	bouafle
24	Boundiali	10	boundiali
25	Korhogo	10	korhogo
26	Ferkessédougou	10	ferkessedougou
27	Bouaké	11	bouake
28	Katiola	11	katiola
29	Mankono	12	mankono
30	Touba	12	touba
31	Séguéla	12	seguela
11	Yamoussoukro	13	yamoussoukro
32	Bouna	14	bouna
33	Bondoukou	14	bondoukou
34	Tiassalé	7	tiassale
36	Anyama	7	anyama
37	Grand-Bassam	3	grand_bassam
38	Issia	9	issia
39	Bingerville	7	bingerville
40	Oumé	5	oume
41	Lakota	5	lakota
42	Sinfra	9	sinfra
44	Danané	9	danane
45	Tingréla	10	tingrela
46	Agnibilékrou	3	agnibilekrou
47	Vavoua	9	vavoua
48	Zuénoula	9	zuenoula
50	Toute la Côte d’Ivoire	\N	all
\.


--
-- TOC entry 3137 (class 0 OID 17026)
-- Dependencies: 229
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.district (district_id, name) FROM stdin;
1	Abidjan 
2	Bas-Sassandra
3	Comoé
4	Denguélé
5	Gôh-Djiboua
6	Lacs
7	Lagunes
8	Montagnes
9	Sassandra-Marahoué
10	Savanes
11	Vallée du Bandama
12	Woroba
13	Yamoussoukro
14	Zanzan
\.


--
-- TOC entry 3145 (class 0 OID 17132)
-- Dependencies: 237
-- Data for Name: evaluation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluation (advertiser_id, guest_id, rating_id, comment, evaluation_id) FROM stdin;
\.


--
-- TOC entry 3144 (class 0 OID 17118)
-- Dependencies: 236
-- Data for Name: favorite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorite (user_id, advert_id, created_at) FROM stdin;
\.


--
-- TOC entry 3115 (class 0 OID 16785)
-- Dependencies: 207
-- Data for Name: follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow (user_id, follower_id) FROM stdin;
\.


--
-- TOC entry 3155 (class 0 OID 33191)
-- Dependencies: 247
-- Data for Name: form_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_field (form_field_id, content) FROM stdin;
1	{"showAdTypes":false,"optionT1":[{"id":1,"label":"Vente"},{"id":2,"label":"Recherche"},{"id":3,"label":"Troc"},{"id":4,"label":"Don"}],"optionT2":[{"id":1,"label":"Vente"},{"id":2,"label":"Recherche"}],"typesOptions":[{"id":1,"label":"Vente"},{"id":2,"label":"Recherche"},{"id":3,"label":"Troc"},{"id":4,"label":"Don"}],"titleLabel":"Titre de l'annonce","description":"","showPrice":true,"priceLabel":"Prix","showHousingRoom":false,"clothingTypes":[{"id":1,"label":"Femmes"},{"id":2,"label":"Hommes"},{"id":3,"label":"Enfants"}],"clothingSizes":[],"shoesTypes":[{"id":1,"label":"Femmes"},{"id":2,"label":"Hommes"},{"id":3,"label":"Enfants"}],"shoesSizes":[16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,"50 et plus"],"genders":[{"id":1,"label":"Feminin"},{"id":2,"label":"Masculin"}],"menClothingSizes":["XS","S","M","L","XL","XXL","XXXL et plus"],"womenClothingSizes":[32,34,36,38,40,42,44,46,48,"50 et plus"],"childClothingSizes":["3 ans","4 ans","5 ans","6 ans","8 ans","10 ans","12 ans","14 ans","16 ans"],"services":[{"id":1,"label":"Informatique, Internet, télécom"},{"id":2,"label":"Décoration, art"},{"id":3,"label":"Services ménagers"},{"id":5,"label":"Beauté, santé"},{"id":6,"label":"Batiment, contruction"},{"id":7,"label":"Transport, déménagement"},{"id":8,"label":"Sécurité"},{"id":9,"label":"Publicité"},{"id":10,"label":"Beauté, santé"},{"id":11,"label":"Formation, Cours à domicile, cours particuliers"},{"id":12,"label":"Reparation, depannage, maintenance"},{"id":13,"label":"Service traiteur"},{"id":14,"label":"Autres"}],"carsYears":[2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000,1999,1998,1997,1996,1995,1994,1993,1992,1991,1990,1989,1988,1987,1986,1985,1984,1983,1982,1981,1980,1979,1978,1977,1976,1975,1974,1973,1972,1971,1970,1969,1968,1967,1966,1965,1964,1963,1962,1961,"avant 1960"],"carsBrands":[{"value":"ACURA","label":"Acura"},{"value":"ALFA","label":"Alfa Romeo"},{"value":"AMC","label":"AMC"},{"value":"ASTON","label":"Aston Martin"},{"value":"AUDI","label":"Audi"},{"value":"AVANTI","label":"Avanti"},{"value":"BENTL","label":"Bentley"},{"value":"BMW","label":"BMW"},{"value":"BUICK","label":"Buick"},{"value":"CAD","label":"Cadillac"},{"value":"CHEV","label":"Chevrolet"},{"value":"CHRY","label":"Chrysler"},{"value":"DAEW","label":"Daewoo"},{"value":"DAIHAT","label":"Daihatsu"},{"value":"DATSUN","label":"Datsun"},{"value":"DELOREAN","label":"DeLorean"},{"value":"DODGE","label":"Dodge"},{"value":"EAGLE","label":"Eagle"},{"value":"FER","label":"Ferrari"},{"value":"FIAT","label":"FIAT"},{"value":"FISK","label":"Fisker"},{"value":"FORD","label":"Ford"},{"value":"FREIGHT","label":"Freightliner"},{"value":"GEO","label":"Geo"},{"value":"GMC","label":"GMC"},{"value":"HONDA","label":"Honda"},{"value":"AMGEN","label":"HUMMER"},{"value":"HYUND","label":"Hyundai"},{"value":"INFIN","label":"Infiniti"},{"value":"ISU","label":"Isuzu"},{"value":"JAG","label":"Jaguar"},{"value":"JEEP","label":"Jeep"},{"value":"KIA","label":"Kia"},{"value":"LAM","label":"Lamborghini"},{"value":"LAN","label":"Lancia"},{"value":"ROV","label":"Land Rover"},{"value":"LEXUS","label":"Lexus"},{"value":"LINC","label":"Lincoln"},{"value":"LOTUS","label":"Lotus"},{"value":"MAS","label":"Maserati"},{"value":"MAYBACH","label":"Maybach"},{"value":"MAZDA","label":"Mazda"},{"value":"MCLAREN","label":"McLaren"},{"value":"MB","label":"Mercedes-Benz"},{"value":"MERC","label":"Mercury"},{"value":"MERKUR","label":"Merkur"},{"value":"MINI","label":"MINI"},{"value":"MIT","label":"Mitsubishi"},{"value":"NISSAN","label":"Nissan"},{"value":"OLDS","label":"Oldsmobile"},{"value":"PEUG","label":"Peugeot"},{"value":"PLYM","label":"Plymouth"},{"value":"PONT","label":"Pontiac"},{"value":"POR","label":"Porsche"},{"value":"RAM","label":"RAM"},{"value":"REN","label":"Renault"},{"value":"RR","label":"Rolls-Royce"},{"value":"SAAB","label":"Saab"},{"value":"SATURN","label":"Saturn"},{"value":"SCION","label":"Scion"},{"value":"SMART","label":"smart"},{"value":"SRT","label":"SRT"},{"value":"STERL","label":"Sterling"},{"value":"SUB","label":"Subaru"},{"value":"SUZUKI","label":"Suzuki"},{"value":"TESLA","label":"Tesla"},{"value":"TOYOTA","label":"Toyota"},{"value":"TRI","label":"Triumph"},{"value":"VOLKS","label":"Volkswagen"},{"value":"VOLVO","label":"Volvo"},{"value":"YUGO","label":"Yugo"}],"housingTypes":[{"id":1,"label":"Maison"},{"id":2,"label":"Appartement"},{"id":3,"label":"Terrain"}]}
\.


--
-- TOC entry 3119 (class 0 OID 16820)
-- Dependencies: 211
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.message (message_id, chat_id, body, "time", is_read, user_id, message_type_id) FROM stdin;
\.


--
-- TOC entry 3123 (class 0 OID 16883)
-- Dependencies: 215
-- Data for Name: message_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.message_type (message_type_id, name) FROM stdin;
1	text
2	picture
3	file
\.


--
-- TOC entry 3106 (class 0 OID 16733)
-- Dependencies: 198
-- Data for Name: phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone (user_id, phone_number) FROM stdin;
\.


--
-- TOC entry 3129 (class 0 OID 16928)
-- Dependencies: 221
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report (report_id, advert_id, created_at, report_message, report_type_id, user_id, user_email) FROM stdin;
\.


--
-- TOC entry 3131 (class 0 OID 16940)
-- Dependencies: 223
-- Data for Name: report_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_type (report_type_id, title) FROM stdin;
1	Annonce mensongère et trompeuse
2	L’annonceur est malhonnête
3	L’annonce ne correspond pas aux images
4	L’annonce enfreint les règles de site
5	L’annonce se trouve dans la mauvaise catégorie
6	Autres raisons
\.


--
-- TOC entry 3153 (class 0 OID 17213)
-- Dependencies: 245
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.search (query, "time", user_id, is_success, category_id) FROM stdin;
\.


--
-- TOC entry 3114 (class 0 OID 16779)
-- Dependencies: 206
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session (session_id, user_id, created_at, last_activity_time, access_token) FROM stdin;
12	30	2018-12-24 18:08:06.447125	\N	176cfaae-e0a4-4f38-91b5-36da47250d87
13	31	2018-12-24 18:09:00.338237	\N	2d3c5a68-02c2-49ac-bc27-2d4ce6f308f4
14	30	2018-12-24 18:45:25.893368	\N	4580a494-b88d-4ed5-a703-b73ed54e3a2b
15	30	2018-12-24 18:46:05.388735	\N	35c7a0fa-f71c-4002-a14d-b41e7556ee86
16	30	2018-12-24 18:50:10.968961	\N	5a1ccdcf-154a-4211-823e-2a006c4b32dd
17	30	2018-12-24 18:50:35.296198	\N	3e53425c-6c12-41b2-9c8d-2b9236c6320f
18	30	2018-12-25 00:17:26.559748	\N	b7712405-3851-411d-85d1-018737414e5b
19	30	2018-12-25 00:35:20.598938	\N	95a91f17-7983-4fe0-b70a-27830ae2adfd
20	30	2018-12-25 15:02:48.34404	\N	8fa2e8e5-22fd-44d9-9be8-f9e6de00dd1b
21	30	2018-12-25 15:03:35.982064	\N	b3b2ec6d-70e8-4364-b62b-25c1d6c59191
22	30	2018-12-25 15:15:12.157352	\N	ea2707c9-e923-492b-a8f0-2862e544d1a8
23	30	2018-12-25 18:54:36.628323	\N	dde8ec72-b91a-4097-ac5e-9abeed190a41
24	30	2018-12-25 21:36:52.153418	\N	991395df-39b8-4dff-9cb8-ddeecb38ddc4
25	30	2018-12-25 21:53:01.886193	\N	565793bb-a18b-4a2c-a846-cbd7ed59c533
26	30	2018-12-25 22:19:15.047265	\N	458df087-3af0-4117-8402-8798809a5ef9
27	30	2018-12-25 22:48:29.490522	\N	5a695c88-cc98-4244-abf4-41e82602d59c
28	30	2018-12-26 04:25:32.672229	\N	dff9bf76-e73c-48eb-9fba-15cc9a68f1ae
29	30	2018-12-26 04:42:13.210048	\N	1e86b2e0-4013-48c5-a419-d3d35fffbc56
30	30	2018-12-26 12:56:41.020584	\N	d12960d2-b986-441e-9a67-f320493cebc4
31	30	2018-12-27 00:11:55.621743	\N	3a562fe2-5cbe-47f5-8167-ba3d0d2aab64
32	30	2018-12-27 00:13:54.43494	\N	09e5eefd-9d1d-4cbf-af44-117a682d3eeb
33	30	2018-12-27 18:55:53.02971	\N	7ea01601-235a-41e1-94bd-bf2f63864fe2
34	30	2018-12-28 17:19:10.294009	\N	94e37996-90b3-4063-b79a-c72bbe623ec6
35	30	2018-12-29 18:53:09.581547	\N	e38a65ed-0501-4757-b634-2654ba89ab61
36	30	2019-01-02 18:12:01.060532	\N	67d3f7c1-b4d0-4013-9e77-2f4e715f6edf
37	30	2019-01-03 02:48:04.296838	\N	ebc6e59f-1a05-4a80-9e25-3483e67526aa
38	30	2019-01-03 03:19:27.995334	\N	9d7a9c3a-28ce-416e-bdae-c322a2190715
39	30	2019-01-04 21:37:26.956834	\N	ce63fbf1-3562-4417-bc51-00d52920e2d3
40	30	2019-01-13 15:19:54.883513	\N	3c68e4e9-6a88-4d3b-8026-3c55697382cf
41	30	2019-01-26 02:18:19.177711	\N	e4c46ee8-6b31-4df4-856e-0a2df44c0081
42	30	2019-01-26 22:48:53.277923	\N	44f45e02-a312-462a-aa51-82cf0af75012
43	30	2019-01-27 23:09:14.006924	\N	e89cd572-d1dd-4342-a585-deedd667cc46
\.


--
-- TOC entry 3148 (class 0 OID 17172)
-- Dependencies: 240
-- Data for Name: share; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.share (advert_id, guest_id, social_media_id, shared_at) FROM stdin;
\.


--
-- TOC entry 3150 (class 0 OID 17188)
-- Dependencies: 242
-- Data for Name: social_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media (social_media_id, name) FROM stdin;
1	facebook
2	whatsapp
3	twitter
\.


--
-- TOC entry 3141 (class 0 OID 17075)
-- Dependencies: 233
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store (store_id, brand_name, owner_id, slogan, profile_picture_url, background_picture_url, store_path) FROM stdin;
1	NIKE	30	\N	\N	\N	nike
2	ADIDAS	31	\N	\N	\N	adidas
\.


--
-- TOC entry 3105 (class 0 OID 16724)
-- Dependencies: 197
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_account (user_id, name, email, profile_picture, password, auth_type_id, city_id) FROM stdin;
30	behouba	behouba@gmail.com	https://cache3.youla.io/files/images/80_80/5b/e6/5be6f5f3cf2045d381310d1e.jpg	$2a$14$QCg4qbv9Xu6tfkiZvMMan.NnnPoaNeCPmcrY2Zsqdu2cJlf7IO/iW	1	\N
31	behouba2	behouba@yandex.ru	https://cache3.youla.io/files/images/80_80/5b/e6/5be6f5f3cf2045d381310d1e.jpg	$2a$14$ZCSo0DC2JALqReXYH8RTN.DVGo0cCV14.CR7VEd6pWVUCwO2XpLZq	1	\N
\.


--
-- TOC entry 3152 (class 0 OID 17201)
-- Dependencies: 244
-- Data for Name: verified_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verified_user (user_id, firstname, lastname, id_card_no, id_card_url) FROM stdin;
\.


--
-- TOC entry 3147 (class 0 OID 17168)
-- Dependencies: 239
-- Data for Name: view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.view (advert_id, guest_id, viewed_at) FROM stdin;
\.


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 201
-- Name: account_state_account_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_state_account_state_id_seq', 3, true);


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 203
-- Name: account_type_account_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_type_account_type_id_seq', 2, true);


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 218
-- Name: advert_advert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advert_advert_id_seq', 62, true);


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 226
-- Name: advert_state_advert_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advert_state_advert_state_id_seq', 3, true);


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 224
-- Name: advert_type_advert_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advert_type_advert_type_id_seq', 5, true);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_type_auth_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_type_auth_type_id_seq', 3, true);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 212
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 142, true);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 208
-- Name: chat_chat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chat_chat_id_seq', 1, false);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 234
-- Name: chat_state_chat_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chat_state_chat_state_id_seq', 2, true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 230
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_city_id_seq', 50, true);


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 216
-- Name: condition_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condition_condition_id_seq', 2, true);


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 210
-- Name: message_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_message_id_seq', 1, false);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 214
-- Name: message_type_table_message_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_type_table_message_type_id_seq', 3, true);


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 228
-- Name: region_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.region_region_id_seq', 14, true);


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 220
-- Name: report_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_report_id_seq', 1, false);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 222
-- Name: report_type_report_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_type_report_type_id_seq', 6, true);


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 205
-- Name: session_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_session_id_seq', 43, true);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 241
-- Name: social_media_social_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_social_media_id_seq', 3, true);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 232
-- Name: store_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_store_id_seq', 2, true);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 196
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 31, true);


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 243
-- Name: verified_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verified_user_user_id_seq', 1, false);


-- Completed on 2019-01-28 22:56:26

--
-- PostgreSQL database dump complete
--
