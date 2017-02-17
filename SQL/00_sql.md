# Structured Query Language (SQL)

### <a name="toc"></a>Table of Contents

[Introduction](#introduction)

[CRUD Model](#crud_model)

[Key Types](#key_types)

[Programming Roles](#programming_roles)

[Tables](#tables)

---

### <a name="introduction"></a> Introduction

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

### <a name="crud_model"></a> CRUD Model

  - Create Table
  - Retrieve Data
  - Update Data
  - Delete Data

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

### <a name="programming_roles"></a> Programming Roles

  - Application Developer
    - Builds the logic for the application, the look and feel of the 
    application.
  - Database Administrator
    - Monitors and adjusts the database as the program runs in production.

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