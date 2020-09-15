/* initialize the database without actually importing
any actual files at this stage

should only be run with an SQL database already set up
and connected using an interface to run SQL scripts;
I use Data Atom, which functions fine with PostgreSQL
as of September 2020. You can probably also run the
script within various dedicated SQL administration
GUI tools. */

CREATE TABLE titlesComprehensive (
  id                  varchar(50),
  ordering            smallint,
  title               text,
  region              text,
  languageOfTitle   text,
  contentTypes       text [],
  contentAttributes  text [],
  isOriginalTitle    bool,
  
  )
