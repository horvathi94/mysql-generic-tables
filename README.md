# mysql-generic-tables
Generic tables that I like to use when creating new MySQL projects.


## Tables: 

### 1. Basic table: 

Stores a list of ordered VARCHAR(200) values. The sorting order is determined by the **indx** column, if this column is 0 the value will be hidden in the view.

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


### 2. OrderedDict table:

Stores an ordered list of dictionary like items, where each row has a key and a value.

#### Table structure: 
id | item_key | item_value | indx
---|----------|------------|------
INT UNSIGNED | VARCHAR(200) | VARCHAR(500) | INT UNSIGNED
PK | Key of the item | Value of the item | Order of the item, if 0 the item is hidden in the view
	
#### Procedures:
- `create_ordereddict_table`
Create an ordereddict table.
  - **table_name**, IN VARCHAR(100): the name of the table to be created.

- `create_ordereddict_view`
Create view of an ordereddict table.
  - **view_name**, IN VARCHAR(100): the name of the view to be created based on the table
  - **table_name**, IN VARCHAR(100): the name of the table based on which the view will be created

- `upsert_ordereddict_table`
Insert or update data in an ordereddict table.
If the **IN id** is not 0, then updates row with that **id**.
If the **IN id** is 0 and then updates the row where **item_key** is the same as the **IN item_key**.
If the **IN id** is 0 and the **IN item_key** is not found in the table, then a row with **indx** 0 is updated with the IN data, if no such row is found then a new row is inserted.
  - **table_name**, IN VARCHAR(100): the table to be updated
  - **id**, IN INT UNSIGNED: the id of the row to be updated
  - **item_key**, IN VARCHAR(200): the item_key of the item to be added or updated
  - **item_value**, IN VARCHAR(500): the item_value of the item to be added or updated
  - **indx**, IN INT UNSIGNED: the index of the item to be added




### 3. Dict table:

Stores a list of dictionary like items, each row has a key and a value.

#### Table structure:
id | item_key | item_value
---|----------|-----------
INT UNSIGNED | VARCHAR(200) | VARCHAR(500)
PK | Key of the item | Value of the item


#### Procedures:

- `create_dict_table`
Create a dict table.
  - **table_name**, IN VARCHAR(100): the name of the table to be created.


- `upsert_dict_table`
Insert or update data in a dict table.
If the **IN id** is not 0, then updates row with that **id**.
If the **IN id** is 0 and then updates the row where **item_key** is the same as the **IN item_key**.
If the **IN id** is 0 and the **IN item_key** is not found in the table, then a new row is inserted.
- **table_name**, IN VARCHAR(100): the table to be updated
- **id**, IN INT UNSIGNED: the id of the row to be updated
- **item_key**, IN VARCHAR(200): the item_key of the item to be added or updated
- **item_value**, IN VARCHAR(500): the item_value of the item to be added or updated


