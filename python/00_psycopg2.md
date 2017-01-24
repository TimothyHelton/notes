# Access PostgreSQL Databases with psycopg2

### <a name="toc"></a>Table of Contents

[Imports](#imports)

[Create Connection](#create_connection)

[Create Cursor](#create_cursor)

[Commit Changes to Database](#commit_changes)

[Execute SQL](#execute_sql)

[Retrieve Record](#retrieve_record)

[Update Record](#update_record)

---

### <a name="imports"></a> Imports 

```
import psycopg2
```

[Table of Contents](#toc)

---

### <a name="create_connection"></a> Create Connection
Establish a connection to the database prior to creating a cursor or 
executing commands.

```
conn = psycopg2.connect(database='db_name', user='user_name', password='pswd')
```

[Table of Contents](#toc)

---

### <a name="create_cursor"></a> Create Cursor

```
cur = conn.cursor()
```

[Table of Contents](#toc)

---

### <a name="commit_changes"></a> Commit Changes to Database

```
conn.commit()
```

[Table of Contents](#toc)

---

### <a name="execute_sql"></a> Execute SQL

```
cur.execute('SQL commands')
```

[Table of Contents](#toc)

---

### <a name="retrieve_record"></a> Retrieve Record
First execute a "select" command and then retrieve the results.

```
cur.execute('select <field> from <table_name> order by <field> desc limit <number>')
cur.fetchall()
```

[Table of Contents](#toc)

---

### <a name="update_record"></a> Update Record

```
cur.execute('update <table_name> set <field>=<value> where <field>=%s', 
            ['filter'])
```

[Table of Contents](#toc)
