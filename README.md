# mysql-generic-tables
Generic tables that I like to use when creating new MySQL projects.


## Tables: 

### 1. Basic table: 

Stores a list of ordered VARCHAR(200) values. The sorting order is determined by the `indx` column, if this column is 0 the value will be hidden in the view.

**Table structure:** 
 id | label | indx 
----|-------|------
INT UNSIGNED | VARCHAR(200) | INT UNSIGNED 
PK | Saved labels | Order of the rows 

**Columns:**
- `id`: 		INT UNSIGNED -> PRIMARY KEY
- `label`: 	VARCHAR(200) -> holds data
- `indx`:		INT UNSIGNED -> order of the rows, if 0 the row is ommited.
