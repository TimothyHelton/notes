# PostreSQL

### <a name="toc"></a>Table of Contents

[Aggregates](#aggregates)

[Background](#background)

[Databases](#databases)

[Expressions](#expressions)

[Help](#help)

[If Then](#if_then)

[Multiple Tables](#multiple_tables)

[Null Values](#null_values)

[Operators](#operators)

[Schemas](#schemas)

[Servers](#servers)

[Tables](#tables)

---

### <a name="aggregates"></a> Aggregates
Aggregates summarize a information about a group of rows.
  
  - assign aliases to the aggregate functions
  - without grouping the function will be run over the whole set

```postgresql
SELECT agg_func(col_or_expression) AS aggregate_descript
FROM table_name
WHERE constraint_expression;
```

#### Aggregate Across Columns

  - to perform aggregate functions across columns add the **GROUP BY** keyword

```postgresql
SELECT agg_func(col_or_expression) AS aggregate_dexcript
FROM table_name
WHERE constraint_expression
GROUP BY col;
```

[Table of Contents](#toc)

---

### <a name="background"></a> Background

  - PostgreSQL is an open source relational database management system (RDBMS).

#### IMPORTANT

  - **To run commands as *postgres* you must sudo in**
```
$ sudo -u postgres psql
```

[Table of Contents](#toc)

---

### <a name="databases"></a> Databases

#### Connect to Database

##### Within PostgreSQL
  - List the databases and chose the name of the one you would like to connect.
  - Use **\c** to connect

```postgresql
\c database_name;
```

##### From Terminal
  - **Must be user postgres to run this command**
``` 
$ psql -h localhost -p 5432 -U postgres database_name
```

#### Create Database

##### Within PostgreSQL
```postgresql
CREATE DATABASE database_name;
```

##### From Terminal
  - on host localhost
  - using port 5432
  - This command will prompt you for a password, which will be "postgres" 
  (since you are the default admin user)

```
$ createdb -h localhost -p 5432 -U postgres database_name
```

#### Delete Database

##### Within PostgreSQL
```postgresql
DROP DATABASE IF EXISTS database_name;
```

##### From Terminal
  - Databases that have any open connections cannot be deleted, so it may be
   easier to use the command line option here.

``` 
$ dropdb -h localhost -p 5432 -U postgres database_name
```

#### Exit Database
```postgresql
\q;
```

#### List Databases
```postgresql
\l;
```

[Table of Contents](#toc)

---

### <a name="expressions"></a> Expressions 
Expressions allow the use to operators on a query. It is good practice to 
always use an alias to name the expression with the **AS** keyword.

| Expression | Meaning |
| ---------- | ------- |
| ADDITION() | add the group |
| AVG() | group average (can only be used on numbers) |
| COUNT() | count the number of rows in the group |
| MAX() | find group maximum |
| MIN() | find group minimum |
| SUM() | sum the group (can only be used on numbers) |
  
```postgresql
SELECT SUM(col1) as summation
FROM table_name;
```

[Table of Contents](#toc)

---

### <a name="help"></a> Help

  - Display a complete list of available commands.
  
```postgresql
\help;
```

  - Detailed help for a single command.

```postgresql
\help command_name;
```

---

### <a name="if_thn"></a> If Then

```postgresql
SELECT col_1, col_2
    IF boolean_expression THEN
        statements
    END IF
FROM table;
```

[Table of Contents](#toc)


[Table of Contents](#toc)

---

### <a name="multiple_tables"></a> Multiple Tables


#### FULL JOIN
Includes all rows from both tables regardless if there is a matching key 
between them.

#### INNER JOIN
Use this process to match values from one table to the other as defined by 
the ON constraint.

  - **JOIN** is the same as **INNER JOIN**
    - use INNER JOIN for clarity

```postgresql
SELECT col_1, another_table_col
FROM table_name
INNER JOIN another_table_name
    ON table_name.id = another_table_name.id
WHERE conditions
ORDER BY col ASC 
LIMIT n OFFSET offset_n;
```

#### LEFT JOIN
Includes all rows from the first table and key matching rows from the second 
table.

#### RIGHT JOIN
Includes all rows from the second table and key matching rows from the first
table.

[Table of Contents](#toc)

---

### <a name="null_values"></a> Null Values

  - Avoid null entries in a database if possible
    - Null entries require special attention for queries
  - It is better to assign a null value like "0"
  - If assigning a null value will alter future calculations then it may be 
  best to use the null entry
  - Test for NULL entries using **IS NULL** or **IS NOT NULL**
  
```postgresql
SELECT col_1, col_2
FROM table_name
WHERE col_1 IS NOT NULL;
```

[Table of Contents](#toc)

---

### <a name="operators"></a> Operators

  - The arithmetic operators are only valid across a single row.
    - To perform math across rows use the aggregate functions.
  - Columns that contain arithmetic function are called "**derived columns**"

| Operator | Meaning |
| -------- | ------- |
| + | addition |
| - | subtraction |
| * | multiplication |
| / | division |
| % | modulus |
| ^ | exponent |
| \|/ | square root |
| \|\|/ | cube root |
| !/ | factorial |
| = | equal |
| != | not equal |
| > | greater than |
| < | less than |
| >= | greater than or equal |
| <= | less than or equal |
| AND | logical and |
| IN | string exists in list |
| NOT IN | opposite of IN |
| ILIKE | case insensitive version of LIKE |
| LIKE | used for wildcard searches; **%** used for zero, one or multiple numbers of characters wildcard; **_** used for single character wild card |
| NOT LIKE | opposite of LIKE |
| NOT | logical not |
| OR | logical or |

#### LIKE Example
```postgresql
SELECT FROM table_name WHERE col1 LIKE 'H%';
```

[Table of Contents](#toc)

---

### <a name="schemas"></a> Schemas
Schemas are like namespaces
  - Sets the data types for each column
  - Allow many users to operate on one database without interfering with 
  each other.
  - Organize the database objects into logical groups.
  - Third-party applications can be isolated from the main database.

#### Create Schema
```postgresql
CREATE SCHEMA schema_name;
```

#### Create Table in Schema
```postgresql
CREATE TABLE  schema_name.table_name (
    col1 datatype,
    col2 datatype,
    PRIMARY KEY ( one_or_more_cols )
);
```

#### Delete Schema
  - if schema is empty
```postgresql
DROP SCHEMA schema_name;
```

  - if schema has objects
```postgresql
DROP SCHEMA schema_name CASCADE;
```

[Table of Contents](#toc)

---

### <a name="servers"></a> Servers
  - make sure to be root user for all these commands

#### Start Server
  - only have to run this command the very first time
``` 
root $ service postgresql initdb
root $ service postgresql start
```

#### Status Server
``` 
root $ service postgresql status
```

#### Stop Server
``` 
root $ service postgresql stop
```

[Table of Contents](#toc)

---

### <a name="tables"></a> Tables

#### Add Record to Table
  - If there is an entry for every column than the tuple defining the 
  columns can be removed.
    - By always including the column line the statement if more robust if 
    the schema is updated to add more columns.
```postgresql
INSERT INTO table_name
(col1, col2, col3)
VALUES (val1, val2, val3); 
```

#### Alter Tables
  - must list existing columns and any new columns
  - **FIRST** and **AFTER** keywords exist in some databases
  - **RENAME TO** will rename the table

```postgresql
ALTER TABLE table_name
ADD col data_type constraint DEFAULT default_value;
```

```postgresql
ALTER TABLE table_name
RENAME TO new_table_name;
```

#### Create Table
  - The **IF NOT EXISTS** clause will skip the table creation if a table 
  with the same name exists.

```postgresql
CREATE TABLE IF NOT EXISTS table_name (
    col_1 datatype constraint DEFAULT default_value,
    col_2 datatype constraint DEFAULT default_value,
    PRIMARY KEY ( one_or_more_cols )
);
```

##### Constraints

| Constraint | Description |
| PRIMARY KEY | values in this column are unique and identify a single row |
| AUTOINCREMENT | integer value that is automatically filled in and incremented with each row insertion |
| UNIQUE | values of this column must be unique, but do not have to be a key |
| NOT NULL | inserted value cannot be NULL |
| CHECK(expression) | perform a check on the input defined by the expression |
| FOREIGN KEY | checks that each value in this column corresponds to a column in another table | 

#### Combine Records with Identical Fields
```postgresql
SELECT fields FROM table_name WHERE condition GROUP BY fields ORDER BY fields;
```

#### Delete Records
  - Delete all records
  
```postgresql
DELETE FROM table_name;
```

  - Delete subset of records
```postgresql
DELETE FROM table_name
WHERE condition;
```

#### Delete Table
  - if a dependent table exists (**FOREIGN KEY**) then it must be updated 
  **prior** to deleting the parent table.
  
```postgresql
DROP TABLE IF EXISTS table_name;
```

#### Display Tables
```postgresql
\d;
```

#### Display Table Schema
```postgresql
\d table_name;
```

#### Retrieve Data from Table
  - Retrieve all records
```postgresql
SELECT * FROM table_name;
```

  - Retrieve subsets
```postgresql
SELECT col1, col2 FROM table_name;
```
```postgresql
SELECT * FROM table_name WHERE col=value;
```

  - Retrieve only a certain number of records
```postgresql
SELECT col1, col2 FROM table_name LIMIT #_rows;
```

  - The **OFFSET** statement will shift the returned limit if desired.
```postgresql
SELECT col1, col2 FROM table_name LIMIT #_rows OFFSET n;
```

##### Sort Values

| Sort Command | Action |
| ------------ | ------ |
| ASC | ascending |
| DESC | descending |

```postgresql
SELECT * FROM table_name ORDER BY col_1, col2 ASC;
```

##### Unique Items From a Field
  - NOTE: **This argument slows the search down considerably.**

```postgresql
SELECT DISTINCT fields FROM table_name WHERE conditions;
```

#### Update Record
  - IF YOU LEAVE OFF THE **WHERE** CLAUSE ALL ROWS WILL BE CHANGED!!!

```postgresql
UPDATE table_name
SET
    col1=val1,
    col2=val2,
WHERE condition;
```

#### Where Like Call on Data

  - **HAVING** allows a where like clause for the **GROUP BY** keyword
  
```postgresql
SELECT fields FROM table_name
WHERE conditions
GROUP BY fields HAVING conditions
ORDER BY fields;
```

[Table of Contents](#toc)