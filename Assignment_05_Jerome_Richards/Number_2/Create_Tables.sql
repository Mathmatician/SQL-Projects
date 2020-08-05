CREATE TABLE Faculty (
  FId varchar(10),
  FName varchar(20),
  CONSTRAINT Faculty_ID_pk PRIMARY KEY(FId)
);

CREATE TABLE Course (
  CId varchar(10),
  CName varchar(20),
  CONSTRAINT Course_ID_pk PRIMARY KEY(CId)
);

CREATE TABLE Qualify (
  QDate DATE,
  FId varchar(10),
  CId varchar(10),
  CONSTRAINT Qualifying_date CHECK(QDate >= TO_DATE('2020-08-24', 'YYYY-MM-DD')),
  CONSTRAINT Qualify_FID_fk FOREIGN KEY(FId) REFERENCES Faculty(FId),
  CONSTRAINT Qualify_CID_fk FOREIGN KEY(CId) REFERENCES Course(CId)
);

CREATE TABLE Assign (
  ADate DATE,
  FId varchar(10),
  CId varchar(10),
  CONSTRAINT Qualifying_check CHECK(ADate > TO_DATE('2020-08-24', 'YYYY-MM-DD')),
  CONSTRAINT Assign_FID_fk FOREIGN KEY(FId) REFERENCES Faculty(FId),
  CONSTRAINT Assign_CID_fk FOREIGN KEY(CId) REFERENCES Course(CId)
);