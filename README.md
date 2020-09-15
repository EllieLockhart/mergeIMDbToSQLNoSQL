# mergeIMDbToSQLNoSQL
 A project to accelerate film research by merging the up to date official IMDb database .tsv files into a relational database (such as PostgreSQL) or a NoSQL solution (such as MongoDB) for further analysis

_Warning: this project is currently IN PROGRESS. The scripts do only what they say, and have only been tested locally at this time. This is note a complete API of any kind, although as it develops it will hopefully become a helpful resource for film researchers._

## Purpose
The Internet Movie Database (IMDb) is an incredibly invaluable resource for anyone doing big data or any level of quantitative analysis on movies. For qualitative analysis, it is simple to query the site itself. However, there is no easy way to consolidate all the data on the site - it is designed in a scraping-resistant fashion, and the open data files (which are proprietary) that IMDb provides are separated out in ways that make it difficult to query them. This project is designed to provide a framework for quantitative film researchers and data scientists to integrate the disparate tsv files into SQL and NoSQL queriable formats. In other words, *these are SQL scripts designed to retrieve data from local tab separated variable files which [can be retrieved from IMBb's official repository](https://www.imdb.com/interfaces/), and put them in an ordered structure within a research-friendly SQL database.

## Excluded Use Cases
This project has a quite limited scope: its purpose is to retrieve data from *local files* (more on that later) and to place them into an SQL or NoSQL database/document store (it is written to conform to, currently, PostgreSQL standards and will also have a MongoDB implementation; adjustments to data types should hopefully be the most modification required to adjust to other frameworks). It does not provide frameworks for further organizing or doing statistical work on this data; it is meant to provide a starting point.

It is also worth noting that this framework does not currently (although I hope to implement this in the future) support updating the IMDb data as it changes without overwriting the existing database. As it is it would be best to modify the scripts and import new tables for more up-to-date versions of the data (as of September 2020, IMDb claims that they update their tsv downloads daily).

##  Copyright and Data Integrity Constraints
These SQL scripts are released under the MIT license, but IMDb's files are both copyrighted (and not under any sort of copyleft beyond that stated on the linked IMDb page) and change regularly; uploading them to this folder in order to have a "complete project" that can be run "out of box" would both present a legal problem, and provide the researcher with frequently outdated data, as I cannot fetch the new batches of IMDb data daily. Thus, the researcher is responsible for acquiring these large data files (which are compressed in gz format as of September 2020), extracting them, and placing them in the project data directory. (Note: this is a TODO; extraction functionality _is not yet implemented_.)

## Project TODOs
- [X] Write a script to initialize PostgreSQL tables to receive dataset
- [ ] Write a script to initialize MongoDB tables to receive dataset
- [ ] Write a script to extract the dataset
- [ ] Write a script to collate overlapping variables (ID variables) to maintain the consistency of the dataset
- [ ] Update this readme with more documentation and links to my other film related data analysis resources, including future IMDb data projects
