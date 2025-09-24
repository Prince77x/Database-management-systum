# Data abstraction
=>DBMS hides complex details of how data is stored and shows only what the user needs. This is called data abstraction.

There are 3 levels of abstraction:

1. Physical Level (Lowest Level)

What it shows: How data is actually stored in memory (files, indexes, blocks).

Who uses it: Database Administrators (DBAs).

Example:

A record of student {"101, Rahul, B.Tech, 85"} is stored in a disk block with a B-tree index.

2. Logical Level (Middle Level)

What it shows: What data is stored in the database and the relationships between them.

Who uses it: Database designers and developers.

Example:

CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);


Logical level shows the structure of the table, but not how it’s stored internally.

3. View Level (Highest Level)

What it shows: The part of the database relevant to a particular user.

Who uses it: End users.

Example:

-- A student’s personal view (only their own data)
SELECT Name, Marks FROM Student WHERE Roll_No = 101;

-- A teacher’s view (all students in their course)
SELECT Name, Marks FROM Student WHERE Course = 'B.Tech';

🔺 Diagram (3-Level Architecture)
   +-------------------+
   |   View Level      |  <- End Users (Students, Teachers)
   +-------------------+
   |   Logical Level   |  <- Tables, Relationships (Developers)
   +-------------------+
   |   Physical Level  |  <- Disk storage, Indexes (DBAs)
   +-------------------+


# DBMS Concepts for Revision

## 1. Schema and Instance

### Definition
- **Schema**: The **overall logical structure** of the database. It defines how data is organized, types of data, and relationships.  
  - It is **stable** and rarely changes.
- **Instance**: The **actual data** stored in the database at a particular moment.  
  - It **changes frequently** as data is updated, inserted, or deleted.

### Example
Consider a `Student` table:

| Attribute  | Type        |
|------------|------------|
| StudentID  | INT        |
| Name       | VARCHAR(50)|
| Age        | INT        |

- **Schema**: `Student(StudentID, Name, Age)`  
- **Instance**: 

| StudentID | Name   | Age |
|-----------|--------|-----|
| 101       | Alice  | 20  |
| 102       | Bob    | 21  |

### Diagram
Schema: defines structure -> Student(StudentID, Name, Age)
Instance: actual data -> {101, Alice, 20}, {102, Bob, 21}

pgsql
Copy code

---

## 2. Types of Schema

### 1. **Physical Schema(Internal Schema )**
- Describes **how data is physically stored** in storage devices(like hdd,ssd ..etc).
- Concerned with file structures, indexes, and access methods.
- Example: Data is stored in a B-tree index or a heap file.

### 2. ** Logical Schema (Conceptual Schema)**
- Describes **the logical structure of the entire database**.
- Includes tables, relationships, constraints, views.
- Example: Entity-Relationship (ER) diagram.

### 3. **View Schema(External Schema) **
- Describes **user-specific views** of the database.
- Each user may have a different view depending on permissions or needs.
- Example: A student can see only their own grades, not all students’ grades.

### Diagram of Three-Level Architecture
 
    External Level
    ----------------
    User Views (V1, V2, V3)
    
    Conceptual Level
    ----------------
    Logical DB Structure (Schema)
    
    Internal Level
    ----------------
    Physical Storage (Files, Indexes)
 

---

## 3. Data Independence

### 3.1 Physical Data Independence
- **Definition**: Ability to **change the physical storage** without affecting the conceptual schema or applications.
- **Example**: Changing a file from heap storage to B-tree indexing does not affect queries or applications.

**Diagram:**
Applications
|
Conceptual Schema
|
Physical Storage -> changed without affecting above

markdown
Copy code

### 3.2 Logical Data Independence
- **Definition**: Ability to **change the logical structure** without affecting applications or external views.
- **Example**: Adding a new column `Email` in `Student` table does not affect existing queries that do not use it.

**Diagram:**
Applications -> unchanged
|
Conceptual Schema -> changed (added Email column)
|
Physical Storage

yaml
Copy code

---

## 4. Comparison: Physical vs Logical Data Independence

| Feature                       | Physical Data Independence         | Logical Data Independence          |
|--------------------------------|----------------------------------|----------------------------------|
| Level Affected                  | Internal (physical storage)       | Conceptual (logical schema)      |
| Application Impact              | None                              | Minimal, depends on views        |
| Example                         | Change file structure/index       | Add new column or table          |
| Difficulty                      | Easier to achieve                 | Harder to achieve                |

---

## 5. Quick Summary

- **Schema** = structure or blueprint of data; **Instance** = data.  
- **Internal Schema** = physical storage.  
- **Conceptual Schema** = logical organization.  
- **External Schema** = user views.  
- **Physical Data Independence** = change storage without affecting logical structure.  
- **Logical Data Independence** = change logical schema without affecting applications.

---

 