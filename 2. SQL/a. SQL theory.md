# 📘 Structured Query Language (SQL)

## 🔹 What is SQL?
- **SQL** = Structured Query Language.  
- It is the **standard language** for managing and manipulating **relational databases (RDBMS)**.  
- SQL allows us to:  
  - Define the database structure (tables, schema)  
  - Insert, update, delete, and query data  
  - Control access and transactions  

👉 SQL is a **declarative language** → You tell **what** you want, not **how** to do it.

---

## 🔹 Why SQL?
- Universal language supported by almost all DBMS (MySQL, PostgreSQL, Oracle, SQL Server, SQLite).  
- SQL is not a Turing machine equivalent language
- Simple to learn, yet powerful.  
- Works with **small apps (SQLite)** to **enterprise-level systems (Oracle, PostgreSQL)**.  

---

## 🔹 Categories of SQL Commands
SQL is divided into **five main categories**:  

| Category | Full Form | Purpose | Examples |
|----------|-----------|---------|----------|
| **DDL** | Data Definition Language | Defines structure of DB objects | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| **DML** | Data Manipulation Language | Work with the data itself | `INSERT`, `UPDATE`, `DELETE` |
| **DQL** | Data Query Language | Retrieve data from DB | `SELECT` |
| **DCL** | Data Control Language | Control permissions/security | `GRANT`, `REVOKE` |
| **TCL** | Transaction Control Language | Manage transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

---

## 🔹 Basic Structure of SQL
### Database Objects
- **Tables** → Store data in rows and columns.  
- **Views** → Virtual tables (based on queries).  
- **Indexes** → Improve search performance.  
- **Schemas** → Logical grouping of tables & objects.  

### Syntax Rules
- SQL is **not case-sensitive** (`SELECT` = `select`).  
- Statements end with a **semicolon (;)**.  
- Strings are enclosed in `'single quotes'`.  
- SQL follows **set theory** (operations are on sets of rows).  


# 📘 SQL Data Types — Notes

SQL provides various data types to define the type of data stored in a table column.

---

## 1️⃣ Numeric Data Types

| Data Type | Description | Example |
|-----------|-------------|---------|
| **INT / INTEGER** | Whole numbers | `200`, `1000` |
| **SMALLINT** | Small-range integer | `120` |
| **BIGINT** | Large integer values | `9223372036854...` |
| **DECIMAL(p,s)** | Exact decimal number (used for currency) | `DECIMAL(10,2)` → `99999999.99` |
| **NUMERIC** | Same as DECIMAL | |
| **FLOAT** | Approximate decimal value | `3.14` |
| **DOUBLE / REAL** | Higher precision floating values | `3.1415926535` |

---

## 2️⃣ String (Character) Data Types

| Data Type | Description | Example |
|-----------|-------------|---------|
| **CHAR(n)** | Fixed-length string | `'ABC'` |
| **VARCHAR(n)** | Variable-length string | `'Prince'` |
| **TEXT / LONGTEXT** | Large string values (notes, blog text) |

---

## 3️⃣ Date & Time Data Types

| Data Type | Description |
|-----------|-------------|
| **DATE** | Stores date (`YYYY-MM-DD`) |
| **TIME** | Stores time (`HH:MM:SS`) |
| **DATETIME** | Date + time |
| **TIMESTAMP** | Auto-records current timestamp |
| **YEAR** | Stores only year |

---

## 4️⃣ Boolean Type

| Data Type | Description |
|-----------|-------------|
| **BOOLEAN / BOOL** | `TRUE` or `FALSE` (internally may store `1/0`) |

---

## 5️⃣ Binary / File Storage Types

| Data Type | Description |
|-----------|-------------|
| **BLOB (Binary Large Object)** | Stores binary data like files/images |
| **VARBINARY(n)** | Variable-length binary data |

---

## 6️⃣ Special / Modern SQL Data Types

| Data Type | Description |
|-----------|-------------|
| **JSON** | Stores JSON structured data |
| **ENUM(...)** | Restricted list of allowed values (e.g., `'Male','Female','Other'`) |

---