--
-- Selected TOC Entries:
--
--
-- TOC Entry ID 2 (OID 42426)
--
-- Name: gesell Type: TABLE Owner: lne
--
CREATE TABLE gesell (
	gesell_bez character varying(30) NOT NULL,
	land character varying(30),
	hauptsitz character varying(30),
	Constraint gesell_pkey Primary Key (gesell_bez)
);
--
-- TOC Entry ID 3 (OID 42428)
--
-- Name: fztyp Type: TABLE Owner: lne
--

CREATE TABLE fztyp (
	typ character varying(30) NOT NULL,
	geschw real,
	sitze integer,
	Constraint fztyp_pkey Primary Key (typ)
);
--
-- TOC Entry ID 4 (OID 42430)
--
-- Name: maschine Type: TABLE Owner: lne
--
CREATE TABLE maschine (
	fznr integer NOT NULL,
	kontr date,
	typ character varying(30),
	Constraint maschine_pkey Primary Key (fznr)
);
--
-- TOC Entry ID 5 (OID 42432)
--
-- Name: pilot Type: TABLE Owner: lne
--
CREATE TABLE pilot (
	pinr integer NOT NULL,
	name character varying(50),
	gebdat date,
	quali character varying(30),
	flug_h integer,
	Constraint pilot_pkey Primary Key (pinr)
);
--
-- TOC Entry ID 6 (OID 42434)
--
-- Name: flug Type: TABLE Owner: lne
--
CREATE TABLE flug (
	fnr integer NOT NULL,
	dauer integer,
	start_in character varying(30),
	ziel character varying(30),
	datum timestamp,
	fznr integer,
	pinr integer,
	Constraint flug_pkey Primary Key (fnr)
);
--
-- TOC Entry ID 7 (OID 42436)
--
-- Name: passagier Type: TABLE Owner: lne
--
CREATE TABLE passagier (
	panr integer NOT NULL,
	name character varying(50),
	adresse character varying(150),
	gebdat date,
	Constraint passagier_pkey Primary Key (panr)
);
--
-- TOC Entry ID 8 (OID 42438)
--
-- Name: bestand Type: TABLE Owner: lne
--
CREATE TABLE bestand (
	fznr integer NOT NULL,
	gesell_bez character varying(30),
	seit date,
	Constraint bestand_pkey Primary Key (fznr)
);
--
-- TOC Entry ID 9 (OID 42440)
--
-- Name: buchung Type: TABLE Owner: lne
--
CREATE TABLE buchung (
	fnr integer NOT NULL,
	panr integer NOT NULL,
	sitznr integer,
	klasse integer,
	preis real,
	Constraint buchung_pkey Primary Key (fnr, panr)
);
--
-- TOC Entry ID 10 (OID 42442)
--
-- Name: angestellt Type: TABLE Owner: lne
--
CREATE TABLE angestellt (
	gesell_bez character varying(30),
	pinr integer NOT NULL,
	seit date,
	Constraint angestellt_pkey Primary Key (pinr)
);
--
-- Data for TOC Entry ID 14 (OID 42426)
--
-- Name: gesell Type: TABLE DATA Owner: lne
--
INSERT INTO gesell (gesell_bez,land,hauptsitz) VALUES ('LUFTHANSA','GER','Frankfurt a.M.');
INSERT INTO gesell (gesell_bez,land,hauptsitz) VALUES ('BRITISH AIRWAYS','UK','London');
INSERT INTO gesell (gesell_bez,land,hauptsitz) VALUES ('AUSTRIAN AIRWAYS','AUS','Wien');
INSERT INTO gesell (gesell_bez,land,hauptsitz) VALUES ('AIR FRANCE','FRA','Paris');
INSERT INTO gesell (gesell_bez,land,hauptsitz) VALUES ('AIR BERLIN','GER','Berlin');
--
-- Data for TOC Entry ID 15 (OID 42428)
--
-- Name: fztyp Type: TABLE DATA Owner: lne
--
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Boeing 737-500',860,103);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Boeing 737-300',855,123);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A319',890,126);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A320',850,150);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A321',970,182);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A310',875,222);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A300-600',855,270);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A340-200',870,212);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Airbus A340-300',870,247);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Boeing 747-400',890,390);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Boeing 757-200',920,217);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Boeing 767',960,269);
INSERT INTO fztyp (typ,geschw,sitze) VALUES ('Concorde',2400,126);
--
-- Data for TOC Entry ID 16 (OID 42430)
--
-- Name: maschine Type: TABLE DATA Owner: lne
--
INSERT INTO maschine (fznr,kontr,typ) VALUES (197,'1998-07-22','Boeing 757-200');
INSERT INTO maschine (fznr,kontr,typ) VALUES (198,'1999-03-31','Concorde');
INSERT INTO maschine (fznr,kontr,typ) VALUES (199,'2000-08-31','Airbus A319');
INSERT INTO maschine (fznr,kontr,typ) VALUES (196,'1999-01-27','Airbus A320');
INSERT INTO maschine (fznr,kontr,typ) VALUES (188,'2000-04-27','Airbus A321');
INSERT INTO maschine (fznr,kontr,typ) VALUES (186,'2000-05-30','Airbus A310');
INSERT INTO maschine (fznr,kontr,typ) VALUES (189,'1998-04-17','Airbus A300-600');
INSERT INTO maschine (fznr,kontr,typ) VALUES (185,'2000-08-16','Boeing 747-400');
INSERT INTO maschine (fznr,kontr,typ) VALUES (187,'2000-02-24','Boeing 747-400');
INSERT INTO maschine (fznr,kontr,typ) VALUES (195,'1999-09-24','Boeing 747-400');
--
-- Data for TOC Entry ID 17 (OID 42432)
--
-- Name: pilot Type: TABLE DATA Owner: lne
--
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (1,'Jan Kretschmer','1959-12-05','Pilot',2188);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (2,'Nico Oppermann','1969-01-10','Pilot',2151);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (3,'Jan Hummel','1976-01-28','Captain',350);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (4,'Jan Berger','1974-09-19','Chiefpilot',826);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (5,'Helmut Pampel','1971-09-29','Pilot',555);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (6,'Ronny Schmidt','1968-03-07','Captain',1754);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (7,'Marsell Reier','1955-07-26','Chiefpilot',278);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (8,'Kurt Bliemel','1959-08-13','Chiefpilot',1655);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (9,'Ronny Drescher','1964-02-26','Chiefpilot',1156);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (10,'Edmund Langer','1971-03-08','Captain',1738);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (27,'Fritz Linke','1956-06-04','Pilot',982);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (84,'Fritz Strauch','1956-03-16','Pilot',1760);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (143,'Fritz Gelfert','1968-01-25','Captain',1055);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (158,'Fritz Melzer','1958-09-16','Pilot',1111);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (166,'Fritz Ackermann','1962-08-02','Chiefpilot',487);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (194,'Fritz Wandel','1977-01-03','Pilot',1117);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (142,'Andre Pflug','1970-11-23','Captain',1824);
INSERT INTO pilot (pinr,name,gebdat,quali,flug_h) VALUES (150,'Helmut Krone','1974-02-10','Chiefpilot',356);
--
-- Data for TOC Entry ID 18 (OID 42434)
--
-- Name: flug Type: TABLE DATA Owner: lne
--
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (1,5,'Nairobi','Sydney','2000-05-17 07:00:00',199,1);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (2,6,'Sydney','Dublin','2000-05-17 12:00:00',199,1);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (3,6,'Dublin','Sydney','2000-05-17 18:00:00',199,1);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (4,5,'Warschau','Marseille','2000-05-30 10:00:00',198,2);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (5,8,'Marseille','Buenos Aires','2000-05-30 15:00:00',198,2);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (8,8,'Koeln-Bonn','Buenos Aires','2000-05-24 15:00:00',197,3);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (9,8,'Buenos Aires','Boston','2000-05-24 23:00:00',197,3);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (10,7,'Oslo','Kairo','2000-06-04 17:00:00',196,4);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (11,5,'Kairo','Denver','2000-06-05 00:00:00',196,4);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (12,8,'Denver','Sharm el Sheik','2000-06-05 05:00:00',196,4);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (13,6,'New York','Bagdad','2000-05-14 02:00:00',195,5);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (14,4,'Bagdad','Montreal','2000-05-14 08:00:00',195,5);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (15,4,'Montreal','Kapstadt','2000-05-14 12:00:00',195,5);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (16,5,'Nairobi','Berlin','2000-05-17 07:00:00',189,6);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (17,6,'Sydney','Berlin','2000-05-17 12:00:00',189,6);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (19,5,'Warschau','Berlin','2000-05-30 10:00:00',188,7);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (20,8,'Marseille','Berlin','2000-05-30 15:00:00',188,7);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (21,4,'Buenos Aires','Berlin','2000-05-30 23:00:00',188,7);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (23,8,'Koeln-Bonn','Berlin','2000-05-24 15:00:00',187,8);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (24,8,'Buenos Aires','Berlin','2000-05-24 23:00:00',187,8);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (29,4,'Bagdad','Berlin','2000-05-14 08:00:00',185,10);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (30,4,'Montreal','Berlin','2000-05-14 12:00:00',185,10);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (18,6,'Dublin','Frankfurt','2000-05-17 18:00:00',189,6);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (25,7,'Oslo','Paris','2000-06-04 17:00:00',186,9);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (26,5,'Kairo','Paris','2000-06-05 00:00:00',186,9);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (27,8,'Denver','London','2000-06-05 05:00:00',186,9);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (28,6,'New York','London','2000-05-14 02:00:00',185,10);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (6,4,'London','Boston','2000-05-30 23:00:00',198,2);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (7,8,'London','Boston','2000-05-24 07:00:00',197,3);
INSERT INTO flug (fnr,dauer,start_in,ziel,datum,fznr,pinr) VALUES (22,8,'London','Buenos Aires','2000-05-24 07:00:00',187,8);
--
-- Data for TOC Entry ID 19 (OID 42436)
--
-- Name: passagier Type: TABLE DATA Owner: lne
--
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (11,'Maria Langer','Dammstrasse 15, 01896 Pulsnitz','1955-11-15');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (37,'Katrin Kache','Abteiufer 24, 01689 Niederau','1931-08-28');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (43,'Karin Bunzel','Dammweg 37, 07613 Nickelsdorf','1945-07-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (83,'Wolfgang Moeller','Poelitzufer 38, 46395 Bocholt','1982-02-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (89,'Jan Krone','Westsiedlung 39, 44807 Bochum','1960-01-05');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (91,'Frank Pietzsch','Buchensiedlung 25, 76149 Karlsruhe','1955-08-08');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (161,'Ingrid Escher','Dreibruedersiedlung 28, 83022 Rosenheim','1936-11-10');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (173,'Linda Pfeifer','Brauweg 37, 98593 Schnellbach','1936-12-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (187,'Else Engel','Elisensiedlung 50, 55126 Mainz','1981-12-04');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (217,'Betty Geigenfeind','Glueckaufgasse 4, 54522 Udler','1958-05-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (241,'Anna Hammer','Landufer 10, 09366 Stollberg','1983-12-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (253,'Erna Meister','Eichenweg 21, 30629 Hannover','1938-05-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (263,'Maria Pietzsch','Herrmannufer 6, 27721 Rittershude','1930-05-20');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (337,'Jan Fuhrmann','Herrenweg 31, 98593 Schnellbach','1947-09-07');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (361,'Swen Engel','Bleichgasse 23, 09366 Stollberg','1933-01-12');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (367,'Betty Neumann','Sonnensiedlung 43, 46395 Bocholt','1952-06-22');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (377,'Oliver Seiler','Abteiberg 26, 17291 Tornow','1934-10-21');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (389,'Anna Ackermann','Angerallee 46, 50171 Kerpen','1932-07-30');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (391,'Peter Geigenfeind','Vetterstrasse 10, 55767 Rinzenberg','1944-08-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (407,'Jan Hammer','Glueckaufberg 2, 27472 Cuxhaven','1974-01-04');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (409,'Margarete Melzer','Brueckensiedlung 50, 95028 Hof','1953-03-25');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (413,'Isabelle Moeller','Goldbachufer 19, 68199 Mannheim','1972-09-04');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (421,'Jim Ziegel','Bergmannsgraben 12, 33619 Bielefeld','1981-03-22');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (427,'Ingrid Klabon','Bahnhofallee 36, 29227 Celle','1969-01-29');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (433,'Otto Rebew','Bergmannsufer 9, 95447 Bayreuth','1976-02-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (437,'Theo Rupert','Sonnenweg 36, 70734 Fellbach','1983-02-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (461,'Lenore Weise','Angerallee 19, 17291 Tornow','1955-07-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (487,'Hans Kante','Eichenberg 45, 47802 Krefeld','1970-02-02');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (523,'Klaus Nowik','Ringstrasse 42, 47802 Krefeld','1976-03-27');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (541,'Werner Geisler','Martinallee 29, 09353 Oberlungwitz','1942-09-09');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (547,'Luise Hummel','Brueckenstrasse 24, 95447 Bayreuth','1966-04-05');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (559,'Oliver Nitzsche','Ostgasse 30, 44629 Herne','1954-01-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (563,'Lenore Geigenfeind','Vettersiedlung 49, 30629 Hannover','1948-02-08');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (599,'Jan Hader','Pappelufer 19, 53113 Bonn','1934-08-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (607,'Dana Kaden','Landsiedlung 23, 17291 Tornow','1943-10-04');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (611,'Frank Ackermann','Glueckaufufer 31, 46395 Bocholt','1953-05-14');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (613,'Frank Neumeister','Landgraben 15, 54522 Udler','1932-01-02');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (637,'Rainer Lipp','Dreibruedergraben 4, 30629 Hannover','1955-03-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (643,'Rainer Mehnert','Bahnhofweg 40, 53113 Bonn','1957-05-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (653,'Lutz Illing','Schulberg 20, 96052 Bamberg','1950-12-08');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (667,'Klaus Leutert','Eichenallee 26, 17449 Trassenheide','1933-05-30');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (679,'Isabelle Stoppe','Ringweg 21, 01069 Dresden','1969-10-21');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (703,'Margarete Reichel','Schulgraben 12, 27472 Cuxhaven','1936-09-29');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (709,'Lenore Gelfert','Brauallee 14, 95447 Bayreuth','1977-02-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (719,'Helmut Langer','Brueckengasse 1, 67829 Schmittweiler','1973-09-15');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (751,'Oliver Gruner','Landallee 20, 68199 Mannheim','1938-01-12');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (769,'Katrin Fuhrmann','Birkenweg 1, 27721 Rittershude','1934-12-14');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (793,'Heinz Gruner','Schubertsiedlung 15, 23568 Luebeck','1944-04-07');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (817,'Klaus Kache','Glueckaufgraben 28, 04229 Leipzig','1936-09-10');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (821,'Jana Reier','Uferstrasse 34, 47802 Krefeld','1931-11-18');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (833,'Margarete Mehnert','Dammgasse 35, 55126 Mainz','1956-03-30');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (841,'Erna Stucke','Vetterstrasse 25, 17449 Trassenheide','1957-03-27');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (847,'Andre Griebel','Angerweg 13, 27472 Cuxhaven','1973-08-21');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (853,'Lenore Gaudl','Eichensiedlung 18, 09366 Stollberg','1960-09-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (857,'Theo Wandel','Seeufer 29, 68199 Mannheim','1945-12-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (881,'Inge Lipp','Tannenweg 45, 04229 Leipzig','1971-11-30');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (907,'Heinz Kante','Goldbachberg 8, 51643 Gummersbach','1967-11-30');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (917,'Erik Kugel','Ostufer 10, 45966 Gladbeck','1960-12-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (923,'Rainer Krug','Seestrasse 25, 50676 Koeln','1932-09-05');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (931,'Isabelle Engel','Landufer 50, 46395 Bocholt','1951-01-31');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (947,'Katrin Weise','Martingraben 15, 13509 Berlin','1970-07-27');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (949,'Frank Liebert','Buchensiedlung 28, 56479 Neustadt','1954-10-19');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (989,'Rene Plewe','Martinweg 50, 45966 Gladbeck','1980-10-14');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1007,'Barbara Hunger','Nordallee 49, 64291 Darmastadt','1961-05-12');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1043,'Jim Neumeister','Knappenstrasse 45, 67829 Schmittweiler','1932-01-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1061,'Swen Hader','Eichengraben 16, 55767 Rinzenberg','1952-12-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1067,'Holger Jentsch','Brueckengraben 23, 27472 Cuxhaven','1949-05-18');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1069,'Andre Wandel','Knappenufer 19, 09353 Oberlungwitz','1985-01-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1109,'Ingrid Geigenfeind','Dreibruederallee 25, 97421 Schweinfurt','1939-11-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1139,'Joachim Hammer','Bergmannsgasse 31, 68199 Mannheim','1971-02-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1147,'Barbara Bliemel','Pappelweg 18, 13509 Berlin','1951-07-31');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1189,'Ernst Bliemel','Birkenberg 15, 50127 Bergheim','1958-12-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1229,'Ernst Ackermann','Knappenstrasse 13, 23568 Luebeck','1972-05-31');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1231,'Linda Kunze','Ulmenstrasse 26, 17111 Toitz','1955-10-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1241,'Anna Ackermann','Eichenstrasse 21, 50171 Kerpen','1980-03-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1243,'Carsten Lipp','Ulmenallee 39, 83022 Rosenheim','1968-12-20');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1253,'Achim Kunze','Uferweg 37, 83022 Rosenheim','1982-04-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1261,'Swen Pfeifer','Goldbachsiedlung 6, 98593 Schnellbach','1937-11-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1267,'Erna Rupert','Altberg 47, 23568 Luebeck','1962-06-07');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1273,'Erna Ebert','Schubertgraben 5, 47802 Krefeld','1955-02-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1279,'Linda Kugel','Teichgasse 16, 30629 Hannover','1976-07-09');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1289,'Katrin Engel','Martinweg 29, 67829 Schmittweiler','1976-02-24');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1297,'Edmund Hammer','Abteigasse 24, 70734 Fellbach','1949-11-04');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1301,'Margarete Engel','Goldbachweg 12, 30629 Hannover','1960-03-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1309,'Jim Thom','Herrmannsiedlung 25, 98593 Schnellbach','1953-10-16');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1343,'Otto Huber','Glueckaufgasse 24, 83707 Ringsee','1977-07-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1351,'Linda Kretschel','Seegasse 19, 30629 Hannover','1952-05-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1379,'Lenore Rebew','Bachufer 16, 29227 Celle','1948-06-27');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1417,'Jim Stach','Suedstrasse 22, 29227 Celle','1976-03-28');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1421,'Luise Gaudl','Pappelstrasse 28, 51643 Gummersbach','1959-03-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1427,'Jim Kersten','Birkengasse 50, 01689 Niederau','1984-12-18');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1429,'Helmut Ebert','Vettergraben 40, 96052 Bamberg','1936-10-21');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1457,'Anna Bliemel','Uferweg 8, 01896 Pulsnitz','1946-01-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1477,'Betty Langer','Bahnhofallee 19, 68199 Mannheim','1939-06-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1493,'Rene Reier','Bachberg 11, 01896 Pulsnitz','1937-04-01');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1501,'Gerhard Klabon','Landgraben 7, 15910 Rietze','1964-01-15');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1513,'Lutz Haupner','Pappelgraben 4, 70734 Fellbach','1973-09-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1519,'Inge Kaden','Herrenallee 21, 55767 Rinzenberg','1976-10-10');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1541,'Holger Gelfert','Seegasse 25, 83022 Rosenheim','1943-02-08');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1567,'Jim Hader','Suedsiedlung 23, 70734 Fellbach','1953-03-07');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1577,'Margarete Bunzel','Buchenstrasse 33, 95447 Bayreuth','1930-07-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1649,'Achim Reier','Birkengasse 4, 23568 Luebeck','1953-12-24');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1657,'Dana Pfauch','Angerweg 48, 45966 Gladbeck','1963-03-16');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1679,'Hans Stucke','Ulmenstrasse 39, 09366 Stollberg','1976-01-17');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1693,'Holger Kunze','Eichenberg 10, 44629 Herne','1957-06-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1697,'Helmut Mischke','Ringgasse 47, 04229 Leipzig','1978-09-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1709,'Gerhard Gruner','Bachweg 37, 04229 Leipzig','1984-09-28');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1711,'Emil Bliemel','Poelitzufer 47, 76149 Karlsruhe','1977-05-08');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1723,'Emil Keller','Ostgraben 33, 03055 Sielow','1955-12-15');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1741,'Luise Berger','Teichstrasse 7, 95447 Bayreuth','1984-01-24');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1763,'Joachim Moeller','Bergmannsgraben 39, 54522 Udler','1931-05-28');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1783,'Martin Meier','Bleichberg 46, 09353 Oberlungwitz','1940-07-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1787,'Lutz Thom','Abteiallee 29, 30629 Hannover','1939-07-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1793,'Nancy Meister','Sonnenweg 12, 67829 Schmittweiler','1965-10-18');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1813,'Jan Melzer','Dammgraben 18, 01069 Dresden','1953-06-11');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1823,'Klaus Strauch','Tannenufer 34, 67829 Schmittweiler','1980-11-16');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1867,'Marsell Neumeister','Bleichberg 11, 47055 Duisburg','1938-09-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1873,'Oliver Rupert','Suedgraben 47, 54522 Udler','1979-08-06');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1877,'Edmund Ebert','Brueckengasse 37, 14469 Potsdam','1981-05-03');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1879,'Joachim Reichel','Glueckaufstrasse 38, 47055 Duisburg','1980-03-23');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1907,'Helmut Kugel','Braustrasse 32, 45966 Gladbeck','1981-08-13');
INSERT INTO passagier (panr,name,adresse,gebdat) VALUES (1909,'Linda Herold','Brauweg 6, 68199 Mannheim','1964-02-10');
--
-- Data for TOC Entry ID 20 (OID 42438)
--
-- Name: bestand Type: TABLE DATA Owner: lne
--
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (187,'AIR FRANCE','1999-09-11');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (188,'AIR FRANCE','2000-01-24');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (189,'AIR FRANCE','1999-03-16');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (195,'AIR BERLIN','2000-01-10');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (196,'AIR BERLIN','1999-02-19');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (197,'AIR BERLIN','1999-08-08');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (198,'AIR BERLIN','1999-05-13');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (199,'AIR BERLIN','1999-12-19');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (185,'LUFTHANSA','1999-03-16');
INSERT INTO bestand (fznr,gesell_bez,seit) VALUES (186,'LUFTHANSA','1999-07-11');
--
-- Data for TOC Entry ID 21 (OID 42440)
--
-- Name: buchung Type: TABLE DATA Owner: lne
--
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,461,0,2,119);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1709,1,2,114);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,11,4,2,115);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1067,11,2,137);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1279,12,1,268);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,667,14,2,150);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,833,15,2,163);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1069,16,2,121);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,611,23,1,270);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,857,24,2,121);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,91,25,2,160);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1043,26,2,170);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,1873,29,2,172);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (1,547,31,2,151);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,1907,0,2,122);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,1417,8,2,193);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,377,15,1,309);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,1783,16,2,189);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,1741,18,1,311);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,413,20,1,378);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (2,541,25,1,399);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,391,7,2,130);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,337,12,2,176);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,437,14,2,120);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,907,18,2,171);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,1429,21,2,143);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (3,1297,26,2,131);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,1289,4,1,212);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,1823,7,2,142);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,931,13,1,238);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,853,18,2,158);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,83,20,2,146);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (4,949,21,2,192);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,821,2,2,156);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,1879,5,2,167);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,607,6,2,196);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,769,8,2,125);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,599,12,2,144);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,1421,17,1,336);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,407,21,2,134);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,1253,27,2,138);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,1231,30,1,345);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (5,817,33,2,119);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,841,4,2,169);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,421,7,1,242);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1243,10,2,177);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1301,16,2,162);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,643,17,1,297);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,241,18,2,138);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1877,19,2,192);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1351,22,1,272);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,361,24,2,159);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1723,26,2,191);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1787,28,2,125);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,1909,32,2,142);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,719,33,1,243);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (6,637,35,1,333);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,433,4,2,181);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,1189,5,1,326);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,1657,11,1,341);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,89,20,1,273);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,1867,22,2,109);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (7,427,26,2,115);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1109,0,1,299);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1577,1,2,131);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,703,7,2,106);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1309,9,2,127);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1007,10,2,107);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1693,13,1,363);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1261,15,1,383);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,1229,17,2,163);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (8,923,19,1,342);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,37,3,1,384);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,1519,6,2,177);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,559,10,2,127);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,409,13,2,108);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,43,16,2,179);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,1541,19,2,116);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (9,1567,21,2,118);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (10,1763,0,2,175);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (10,917,6,1,332);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (10,563,11,2,123);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (10,253,13,2,168);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (10,367,17,2,105);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,173,0,2,130);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,187,3,2,179);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,1649,5,2,150);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,653,6,2,153);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,1501,9,2,129);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,263,10,2,145);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,1267,12,1,396);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,1379,14,2,158);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (11,1679,17,1,345);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,613,0,2,106);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,679,2,1,388);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1273,3,2,157);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,161,5,2,197);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1477,8,2,157);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1697,9,2,125);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1139,10,2,181);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1813,12,2,193);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,947,17,2,127);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (12,1711,21,2,141);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,751,1,2,189);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,1457,6,2,105);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,709,13,1,320);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,1493,14,1,298);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,1427,17,2,198);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,217,18,2,112);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,847,22,2,151);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,487,25,2,119);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (13,1241,26,2,195);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (14,989,3,2,143);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (14,1343,14,1,320);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (14,1147,15,2,162);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (14,793,21,2,140);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,1793,1,2,191);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,1061,4,1,336);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,1513,7,2,148);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,881,21,1,358);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,389,25,1,216);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (15,523,26,2,111);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,461,2,2,148.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,11,6,2,143.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,667,16,2,187.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,833,17,2,203.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,611,25,1,337.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,857,26,2,151.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,91,27,2,200);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (16,547,33,2,188.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (17,377,17,1,386.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (17,413,22,1,472.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (17,541,27,1,498.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (18,391,9,2,162.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (18,337,14,2,220);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (18,437,16,2,150);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (18,907,20,2,213.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (19,931,15,1,297.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (19,853,20,2,197.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (19,83,22,2,182.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (19,949,23,2,240);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,821,4,2,195);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,607,8,2,245);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,769,10,2,156.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,599,14,2,180);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,407,23,2,167.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (20,817,35,2,148.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,841,6,2,211.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,421,9,1,302.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,643,19,1,371.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,241,20,2,172.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,361,26,2,198.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,719,35,1,303.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (21,637,37,1,416.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (22,433,6,2,226.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (22,89,22,1,341.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (22,427,28,2,143.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (23,703,9,2,132.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (23,923,21,1,427.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (24,37,5,1,480);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (24,559,12,2,158.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (24,409,15,2,135);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (24,43,18,2,223.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (25,917,8,1,415);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (25,563,13,2,153.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (25,253,15,2,210);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (25,367,19,2,131.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (26,173,2,2,162.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (26,187,5,2,223.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (26,653,8,2,191.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (26,263,12,2,181.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (27,613,2,2,132.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (27,679,4,1,485);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (27,161,7,2,246.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (27,947,19,2,158.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (28,751,3,2,236.25);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (28,709,15,1,400);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (28,217,20,2,140);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (28,847,24,2,188.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (28,487,27,2,148.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (29,989,5,2,178.75);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (29,793,23,2,175);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (30,881,23,1,447.5);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (30,389,27,1,270);
INSERT INTO buchung (fnr,panr,sitznr,klasse,preis) VALUES (30,523,28,2,138.75);
--
-- Data for TOC Entry ID 22 (OID 42442)
--
-- Name: angestellt Type: TABLE DATA Owner: lne
--
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR BERLIN',5,'1999-03-03');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR BERLIN',4,'1999-09-26');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR BERLIN',3,'1999-12-19');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR BERLIN',2,'1999-04-10');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR BERLIN',1,'1999-06-09');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR FRANCE',8,'1999-03-09');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR FRANCE',7,'1999-09-07');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('AIR FRANCE',6,'1999-09-12');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('LUFTHANSA',10,'1999-12-18');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('LUFTHANSA',9,'1999-10-28');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',27,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',84,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',143,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',158,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',166,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',194,'2003-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',142,'2002-01-01');
INSERT INTO angestellt (gesell_bez,pinr,seit) VALUES ('BRITISH AIRWAYS',150,'2002-01-01');
