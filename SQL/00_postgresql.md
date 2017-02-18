# PostreSQL

### <a name="toc"></a>Table of Contents


[Background](#background)

[Databases](#databases)

[Expressions](#expressions)

[Help](#help)

[Operators](#operators)

[Schemas](#schemas)

[Servers](#servers)

[Tables](#tables)

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

  - ADDITION
  - AVG()
  - COUNT()
  - SUM()

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

[Table of Contents](#toc)

---

### <a name="operators"></a> Operators

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
| NOT | logical not |
| OR | logical or |
| LIKE | used for wildcard searches; **%** used for zero, one or multiple numbers of characters wildcard; **_** used for single character wild card |

#### LIKE Example
```postgresql
SELECT FROM table_name WHERE col1 LIKE 'H%';
```

[Table of Contents](#toc)

---

### <a name="schemas"></a> Schemas
Schemas are like namespaces
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
```postgresql
INSERT INTO table_name (col1, col2, col3)
VALUES (val1, val2, val3); 
```

#### Create Table
```postgresql
CREATE TABLE table_name (
    col_1 datatype,
    col_2 datatype,
    PRIMARY KEY ( one_or_more_cols )
);
```

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
DELETE FROM table_name WHERE condition;
```

#### Delete Table
```postgresql
DROP TABLE table_name;
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
SELECT col1, col2 FROM table_name LIMIT #_rows OFFSET #;
```

#### Sort Values

| Sort Command | Action |
| ------------ | ------ |
| ASC | ascending |
| DESC | descending |

```postgresql
SELECT * FROM table_name ORDER BY col_1, col2 ASC;
```

#### Unique Items From a Field
```postgresql
SELECT DISTINCT fields FROM table_name WHERE conditions;
```

#### Update Record
```postgresql
UPDATE table_name SET col1=val1, col2=val2 WHERE condition;
```

#### Where Like Call on Data
```postgresql
SELECT fields from table_name
WHERE conditions GROUP BY fields HAVING conditions ORDER BY fields;
```

[Table of Contents](#toc)