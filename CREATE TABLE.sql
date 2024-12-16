CREATE TABLE Ligue (
    ID_Ligue INT,
    nomLigue VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Ligue PRIMARY KEY (ID_Ligue)
)engine = innodb;

CREATE TABLE Employe (
    ID_Employe INT,
    prenomEmploye VARCHAR(50) NOT NULL,
    nomEmploye VARCHAR(50) NOT NULL,
    mail VARCHAR(100) UNIQUE NOT NULL,
    passwd VARCHAR(50) NOT NULL,
    datearv DATE NOT NULL,
    datedepart DATE,
    Admin BOOLEAN NOT NULL,
    ID_Ligue INT,
    CONSTRAINT PK_Employe PRIMARY KEY (ID_Employe)
)engine = innodb;

ALTER TABLE Employe
ADD CONSTRAINT fk_Ligue_employe
FOREIGN KEY (ID_Ligue) 
REFERENCES Ligue(ID_Ligue);