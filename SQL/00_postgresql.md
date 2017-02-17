# PostreSQL

### <a name="toc"></a>Table of Contents


[Background](#background)

[Databases](#databases)


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
CREATE DATABASE database_name
```

##### From Terminal
  - on host localhost
  - using port 5432
  - This command will prompt you for a password, which will be "postgres" 
  (since you are the default admin user)

```
$ createdb -h localhost -p 5432 -U postgres database_name
```
[Table of Contents](#toc)