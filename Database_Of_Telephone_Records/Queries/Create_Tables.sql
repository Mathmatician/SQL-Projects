CREATE TABLE Calls (
  phoneNumber numeric,
  connectedNumber numeric,
  StartTime date,
  EndTime date,
  Answered bit,
  VoiceMail numeric,

  PRIMARY KEY (phoneNumber, connectedNumber, StartTime)
);


CREATE TABLE Customer (
  Id numeric PRIMARY KEY,
  lastName varchar(20),
  firstName varchar(20),
  birthDate date,
  PrimaryPhone numeric,
  street varchar(30),
  city varchar(20),
  state varchar(10),
  zip int
);


CREATE TABLE PermanentRecords (
  Id numeric,
  phoneNumber numeric,
  SignUpDate date,
  TerminationDate date,
  lastName varchar(20),
  firstName varchar(20),
  PrimaryPhone numeric,
  street varchar(30),
  city varchar(20),
  state varchar(10),
  zip int,

  PRIMARY KEY (Id,phoneNumber, SignUpDate )
);


CREATE TABLE PhoneFinder (
  phoneNumber numeric PRIMARY KEY,
  Id numeric
);


CREATE TABLE PhonePlan (
  phoneNumber numeric,
  PrimaryPhone numeric,
  SignUpDate date,
  DataPlan varchar(9),

  PRIMARY KEY (phoneNumber, PrimaryPhone, SignUpDate)
);


CREATE TABLE Texts (
  phoneNumber numeric,
  connectedNumber numeric,
  messageDate time,
  textMessage varchar(200),
  sent bit,

  PRIMARY KEY (phoneNumber, connectedNumber, messageDate)
);