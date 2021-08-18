# mysql-generic-tables
Generic tables that I like to use when creating new MySQL projects.


## Tables: 

### 1. Basic table: Stores a list of VARCHAR values.

Table structure: | id | label | indx |
Columns:
- id: 		INT UNSIGNED -> PRIMARY KEY
- label: 	VARCHAR(200) -> holds data
- indx:		INT UNSIGNED -> order of the rows, if 0 the row is ommited.
