# Structured Query Language (SQL)

### <a name="toc"></a>Table of Contents

[Introduction](#introduction)

[Cleaning Data](#cleaning_data)

[Comments](#comments)

[CRUD Model](#crud_model)

[Data Types](#data_types)

[If Then](#if_then)

[Key Types](#key_types)

[Order of Operations](#order_of_operations)

[Programming Roles](#programming_roles)

[Style](#style)

[Tables](#tables)

---

### <a name="introduction"></a> Introduction

  - RDBMS: Relational Database Management Systems

#### SQL: Structured Query Language
Standardized language used to issue commands to a database.

#### Terminology

| Term | Definition |
| ---- | ---------- |
| Attribute (column or field) | one of possibly many elements of data corresponding to the object represented by the row (conform t0 the same constraints)
| Database | many tables |
| Object | physical objects or concepts |
| Relation (table) | a set of tuples that have the same attributes |
| Schema (database model) | structure of the database (metadata including headers and data types |
| Tuple (row) | a set of fields that generally represents an "object" (person, music track)

#### Relational Database

  - Model data by storing rows and columns in tables.
  - The power of the relational database lies in its ability to efficiently 
  retrieve data from the tables (especially when there are multiple tables 
  and the relationships between those tables in the query).
  
![alt text](relational_database.png)

[Table of Contents](#toc)

---

### <a name="cleaning_data"></a> Cleaning Data

#### Concatenate
- combine strings from several columns
- alternative syntax is to use double pipes ||

```sql
SELECT CONCAT(col_1, ', ', col_2) AS alias_name
FROM table_name;
```

```sql
SELECT con_1 || ', ' || col_2 AS alias_name
FROM table_name;
```

#### Left
- return n characters from the left side of a string

```sql
SELECT LEFT(col_3, n_characters) AS alias_name
FROM table_name;
```

#### Length
- return the length of a string

```sql
SELECT RIGHT(col_1, LENGTH(col_1 - 10)) AS alias_name
FROM table_name;
```

#### Position
- return the index of a character in a string
- **STRPOS** will do the same exact thing
- **BOTH METHODS ARE CASE SENSITIVE**
  - use the UPPER or LOWER function to search regardless of case

```sql
SELECT POSITION('character' IN col_1) AS alias_name
FROM table_name;
```

```sql
SELECT STRPOS(col_1, 'character') AS alias_name
FROM table_name;
```

#### Right
- return n characters from the right side of a string

```sql
SELECT RIGHT(col_1, n_characters) AS alias_name
FROM table_name;
```

#### Substring
- SUBSTRING works like LEFT or RIGHT, but searches in the middle of a string

```sql
SELECT SUBSTRING(col_1, start_idx, n_characters) AS alias_name
FROM table_name;
```

#### Trim
- remove characters from the **RIGHT**, **LEFT** or **BOTH** sides of a string

```sql
SELECT TRIM(BOTH '9()' FROM col_1)
FROM table_name;
```

[Table of Contents](#toc)


---

### <a name="comments"></a> Comments

  - single line comments are denoted by two hyphens "--"
  - multi line comments follow C language convention "/* */"
  
```sql
-- This is a single line comment
/* This
is a 
multi line
comment*/
```

[Table of Contents](#toc)


---

### <a name="crud_model"></a> CRUD Model

  - Create Table
  - Retrieve Data
  - Update Data
  - Delete Data

[Table of Contents](#toc)

---

### <a name="data_types"></a> Data Types

| Data Type | Description |
| --------- | ----------- |
| INTEGER, BOOLEAN | whole integer values (0 or 1 for boolean) |
| FLOAT, DOUBLE PRECISION, REAL | decimal numbers or various precision |
| CHARACTER(num_chars), VARCHAR(num_chars), TEXT | string types |
| DATE, DATETIME | dates and times |
| BLOB | binary data with metadata to perform queries |

#### Alter Data Type
```sql
CAST(col_1 AS new_type)
```

```sql
col_1::new_type
```

[Table of Contents](#toc)

---

### <a name="if_then"></a> If Then

```sql
SELECT
    CASE
        WHEN condition_1
            THEN action_1
        WHEN condition_2
            THEN action_2
        ELSE action_3
    END AS group_alias,
    COUNT(*) count_alias
FROM table_name
GROUP BY group_alias
ORDER BY group_alias;
```

[Table of Contents](#toc)


---

### <a name="key_types"></a> Key Types

  - Primary
    - integers
    - one key for every record
    - used as the record pointer in other tables (end of arrow)
  - Logical
    - unique field to find record from outside the database
    - used in "where" clause
  - Foreign
    - integer used to call primary keys in other tables (beginning of arrow)
  - Composite
    - The values of the entire row are the key
    
[Table of Contents](#toc)

---

### <a name="order_of_operations"></a> Order of Operations

  1. **FROM** and **JOIN**
  1. **WHERE**
    1. aliases in the **SELECT** section are not available here
  1. **GROUP BY**
  1. **HAVING**
  1. **AS** aliases in the **SELECT** section
  1. **DISTINCT**
  1. **ORDER BY**
  1. **LIMIT** and **OFFSET**

```sql
SELECT DISTINCT col, AGG_FUNC(column_or_expression),
FROM table_name
    JOIN another_table_name
      ON table_name.column = another_table_name.column
    WHERE constraint_expression
    GROUP BY col
    HAVING constraint_expression
    ORDER BY col ASC/DESC
    LIMIT n OFFSET COUNT;
```


[Table of Contents](#toc)

---

### <a name="programming_roles"></a> Programming Roles

  - Application Developer
    - Builds the logic for the application, the look and feel of the 
    application.
  - Database Administrator
    - Monitors and adjusts the database as the program runs in production.

[Table of Contents](#toc)

---

### <a name="style"></a> Style

  - all column names will be **lowercase** unless placed between double quotes
  - to have column names with spaces use double quotes
    - it's best to avoid the use of double quotes and call the **AS** clause
     to format the titles

#### Quotes

  - Double quotes (" ") are used for table or column names
  - Single quotes (' ') are used for strings

[Table of Contents](#toc)

---

### <a name="table"></a> Table

#### Create New Table
```
CREATE TABLE table_name (
    field_name_1 datatype,
    field_name_2 datatype,
)
```

#### Delete Table
```
DROP TABLE IF EXISTS table_name
```

#### Delete Record From Table
``` 
DELETE FROM table_name WHERE field=value
```

#### Insert Record Into Table
``` 
INSERT INTO table_name (field_name_1, field_name_2) VALUES (value_1, value_2)
```

#### Join Multiple Tables Together

  - If the **ON** clause is left off all permutations of the combined tables
   will be returned
``` 
SELECT table_name_1.field, table_name_2.field
FROM table_name_1 JOIN table_name_2 ON table_name_1.field = table_name_2.field
```

#### Retrieve All Records
``` 
SELECT * FROM table_name
```

#### Retrieve a Field
``` 
SELECT field FROM table_name WHERE field=value
```

#### Retrieve a Set of Records
``` 
SELECT * FROM table_name WHERE field=value
```

#### Sort Records
``` 
SELECT * FROM table_name ORDER BY field
```

#### Sort Records and Return Top 10 Selected Fields in Descending Order
```
SELECT field_1, field_2 FROM table_name ORDER BY field_2 DESC LIMIT 10
```

#### Update Record In Table

  - NOTE: without the **WHERE** clause all records would be updated.
``` 
UPDATE table_name SET field=new_value WHERE field=value
```

[Table of Contents](#toc)