/* This script should only be run after the following
files are placed in the /imdbDataFilesPreMerge folder of
the project directory:

name.basics.tsv
title.akas.tsv
title.basics.tsv
title.crew.tsv
title.episode.tsv
title.principals.tsv
title.ratings.tsv

These files can (as of September 2020) be found at the
link in the README.md and .gitignore files of this project.
They cannot be bundled with the project itself due to
liense issues; furthermore, they are provided packed in .gz
format and must be unpacked with a suitable unarchive
utility. Running this script without downloading These
files and extracting the contents of the .gz archives into
the /imdbDataFilesPreMerge directory, or running this
script outside of the directory in which it resides by
default, will definitely result in a script failure! */

/*CREATE TABLE titleInformation_premerge (
  id                CHARACTER VARYING(50),
  ordering          integer,
  title             text,
  region            text,
  language          text,--this is a suboptimal column name
  types             text [],
  attributes        text [],
  isOriginalTitle   bool,
  PRIMARY KEY (id)
  ) */

-- need to use the exact path for your system
COPY titleInformation_premerge FROM '/home/Ellie/Documents/GitHub/mergeIMDbToSQLNoSQL/imdbDataFilesPreMerge/title.basics.tsv' DELIMITER E'\t';
