/* initialize the database without actually importing
any actual files at this stage

should only be run with an SQL database already set up
and connected using an interface to run SQL scripts;
I use Data Atom, which functions fine with PostgreSQL
as of September 2020. You can probably also run the
script within various dedicated SQL administration
GUI tools. */

--create the table for works (TV shows, movies, games)
CREATE TABLE titlesComprehensive (
  id                 varchar(50),
  ordering           integer,
  title              text,
  region             text,
  languageOfTitle    text,
  contentTypes       text [],
  contentAttributes  text [],
  isOriginalTitle    bool,
  titleType          varchar(20),
  primaryTitle       text,
  originalWorkTitle  text,
  isAdult            bool,
  startYear          smallserial,
  endYear            smallserial,
  -- development note: will need to test how null imput
  -- is handled by the interval datatype when the script
  -- to import is implemented. TODO
  runtimeMinutes     smallserial,
  genres             varchar(50) [],
  directors          varchar(50) [],
  writers            varchar(50) [],
  parentTitleEpisode varchar(50),
  seasonNumber       smallserial,
  episodeNumber      smallserial,
  averageRatingUsers real,
  numVotesOnTitle    serial,
  -- data from title,pricipals.tsv
  -- need to review structure, TODO
  PRIMARY KEY (id)
  )

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
