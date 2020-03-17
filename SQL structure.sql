-CREATE TABLE taille (
tailCode int (11) NOT NULL AUTO_INCREMENT,
tailLong int(2) NOT NULL,
tailLarg int(2) NOT NULL,
tailHaut int(2) NOT NULL,
CONSTRAINT pk_taille PRIMARY KEY (tailCode));


CREATE TABLE typeConteneur (
contType int(11) NOT NULL AUTO_INCREMENT,
typeLibel varchar(15) NOT NULL,
CONSTRAINT pk_typeConteneur PRIMARY KEY (contType));

CREATE TABLE quai (
numQuai char(2) NOT NULL,
CONSTRAINT pk_quai PRIMARY KEY (numQuai));

CREATE TABLE allee (
numAllee char(3) NOT NULL,
numQuai char(2) NOT NULL,
CONSTRAINT pk_allee PRIMARY KEY (numAllee,NumQuai),

CONSTRAINT fk_numQuai FOREIGN KEY (numQuai) REFERENCES quai (codePosition));


CREATE TABLE emplacement (
numEmp char(3) NOT NULL,
numAllee char(3) NOT NULL,
numQuai char(2) NOT NULL,
CONSTRAINT pk_leConteneur PRIMARY KEY (numEmp,numAllee, numQuai),

CONSTRAINT fk_numAllee FOREIGN KEY (numAllee) REFERENCES allee (numAllee),
CONSTRAINT fk_numQuai FOREIGN KEY (numQuai) REFERENCES quai (numQuai));

CREATE TABLE conteneur(
contCode char(2) NOT NULL,
contType int(11) NOT NULL,
tailCode int (11) NOT NULL,
CONSTRAINT pk_conteneur PRIMARY KEY (contCode),
CONSTRAINT fk_contType FOREIGN KEY (contType) REFERENCES typeConteneur (contType),
CONSTRAINT fk_tailCode FOREIGN KEY (tailCode) REFERENCES taille (tailCode));

CREATE TABLE position (
numPosition char(9) NOT NULL,
numQuai char(2) NOT NULL,
numAllee char(3) NOT NULL,
numEmp char(3) NOT NULL,
etage char(1) NOT NULL,
numCont char(11),
CONSTRAINT pk_position PRIMARY KEY (numPosition),
CONSTRAINT fk_numQuai FOREIGN KEY (numQuai) REFERENCES quai (numQuai),
CONSTRAINT fk_numAllee FOREIGN KEY (numAllee) REFERENCES allee (numAllee),
CONSTRAINT fk_numEmp FOREIGN KEY (numEmp) REFERENCES emplacement (numEmp),
CONSTRAINT fk_numCont FOREIGN KEY (numCont) REFERENCES leConteneur (numCont));

CREATE TABLE leConteneur(
numCont char (11) NOT NULL,
numCli int (20),
dateA date,
contCode char(2) NOT NULL,
codePosition char(9) NOT NULL,
CONSTRAINT pk_leConteneur PRIMARY KEY (numCont),
CONSTRAINT fk_contCode FOREIGN KEY (contCode) REFERENCES conteneur (contCode),
CONSTRAINT fk_codePosition FOREIGN KEY (codePosition) REFERENCES position (codePosition));