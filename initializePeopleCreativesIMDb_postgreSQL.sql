
--create the separate table for people rather than
--works

CREATE TABLE individualsComprehensive (
  id                  varchar (50),
  personPrimaryName   text,
  personBirthYear     smallserial,
  personDeathYear     smallserial,
  personPrimaryProf   text [],
  personKnownFor      varchar(50) [],
  PRIMARY KEY (id)
  )
