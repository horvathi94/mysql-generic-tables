# mysql-generic-tables
Generic tables that I like to use when creating new MySQL projects.


## Tables: 

### 1. Basic table: 

Stores a list of ordered VARCHAR(200) values. The sorting order is determined by the `indx` column, if this column is 0 the value will be hidden in the view.

#### Table structure:
 id | label | indx 
----|-------|------
INT UNSIGNED | VARCHAR(200) | INT UNSIGNED 
PK | Saved labels | Order of the rows, if 0 the row is hidden in the view 

#### Procedures:

* `create_basic_table`
Creates a basic table
  * **table_name**, IN VARCHAR(100): the name of the table to be created
  
* `create_basic_view` 
Create view of a basic table.
   * **view_name**, IN VARCHAR(100): the name of the view to be created based on the table
   * **table_name**, IN VARCHAR(100): the name of the table based on which the view will be created
    
* `upsert_basic_table` 
Insert or update data in a basic table.
Updates the row where label is matched, if the label is not found in the table then it is inserted.
  * **table_name,** IN VARCHAR(100): the table to be updated
  * **label**, IN VARCHAR(100): the label to be added or updated
  * **indx**, IN INT UNSIGNED: the index of the item to be added

