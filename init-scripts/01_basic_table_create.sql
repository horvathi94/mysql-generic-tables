/*

----- Basic table -----


Stores a list of VARCHAR values.

Table structure: | id | label | indx |
Columns:
  - id:			INT UNSIGNED -> PRIMARY KEY
  - label:	VARCHAR(200) -> holds data
  - indx:		INT UNSIGNED -> order of the rows, if 0 the row is hidden in view.

	
 */

DELIMITER $
CREATE PROCEDURE create_basic_table(
	IN table_name	VARCHAR(100)
)

BEGIN

	SET @create_query = CONCAT(
		"CREATE TABLE IF NOT EXISTS `", table_name, "`(",
			"id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, ",
			"label VARCHAR(200) UNIQUE, ",
			"indx INT UNSIGNED );"
		);

		PREPARE stmt FROM @create_query;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

END $$
DELIMITER ;
