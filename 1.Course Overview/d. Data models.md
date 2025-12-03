# DBMS Data Models

## 1. What is a Data Model?

A **data model** is a **conceptual representation of data structures, relationships, and constraints**. It acts as a blueprint for designing a database.

**Key Points:**
- Defines how data is **stored, organized, and manipulated**.
- Provides **structure**, **operations**, and **integrity rules**.

**Analogy:**  
- Database = building  
- Data model = architectural plan  

---
## Difference Between Data Model and Schema

### Key Points to Remember

- **Data Model** = Abstract concept.

-It tells how data can be structured.

-Example: Relational model says “**store data in tables**”.

- **Schema** = Concrete implementation.

-It tells how data is **actually structured** in your DB.

-Example: The table Student(StudentID, Name, Age) is a schema using the relational model.
---
## 2. Categories of Data Models

Data models can be classified into **three levels**:

1. **High-level / Conceptual Models:**  
   - Focus on **what data is stored**  
   - For **users & designers**  
   - Examples: ER Model, UML Class Diagram  

2. **Logical / Representational Models:**  
   - Focus on **how data is logically represented** for DB implementation  
   - Examples: Relational, Network, Hierarchical, Object-Oriented  

3. **Low-level / Physical Models:**  
   - Focus on **how data is stored physically**  
   - Examples: File structures, indexes, B-trees  

---

## 3. Major Types of Data Models

### 3.1 Relational Data Model
- **Level:** Logical  
- **Idea:** Data stored in **tables (relations)** with rows (tuples) and columns (attributes)  
- **Key Features:**  
  - Tables linked by **Primary Key (PK)** and **Foreign Key (FK)**  
  - Supports **SQL queries**  

Student Table:
| StudentID | Name  | Age |
|-----------|-------|-----|
| 101       | Alice | 20  |
| 102       | Bob   | 21  |

Course Table:
| CourseID | Title  |
|----------|--------|
| C101     | Math   |
| C102     | Physics|
---
### 3.2 Entity-Relationship (ER) Model

- **How it works**: Represents real-world objects as entities, their properties as attributes, and associations as relationships.

- Use: **Mainly for database design**.

- **Example Diagram:**

[Student] ---Enrolls---> [Course]
Attributes: StudentID, Name, Age
---
### 3.3 Object-Oriented Data Model
- **Level:** Logical  
- **Idea:** Stores **objects** with **attributes + methods**  
- **Features:** Inheritance, Encapsulation, Polymorphism  
- **Use:** Complex data like **multimedia, CAD, GIS**  

**Example:**
 
Class Student {
   int StudentID;
   String Name;
   int Age;
   Method enroll(Course c);
}```
---
### 3.4 Hierarchical Data Model
- **Level:** Logical  
- **Idea:** Data organized as a **tree structure**  
- **Relationships:** Parent → Child  
- **Use:** Fast retrieval if relationships are strictly hierarchical  

**Example:**
- Department
-  ├─ Employee1
-  └─ Employee2

---

## 3.5 Network Data Model
- **Level:** Logical  
- **Idea:** Data as **nodes (records)** connected via **edges (pointers)**  
- **Supports:** Many-to-many relationships  
- **Use:** CODASYL DBMS  

**Example:**
Student --enrolled_in--> Course
Course --has_students--> Student
---
### 3.6 Key-Value Data Model
- **Level:** Logical  
- **Idea:** Data stored as **key → value pairs**  
- **Use:** Very fast retrieval by key, schema-less  

**Example:**
 
{ "StudentID:101" : {"Name":"Alice","Age":20} }
Used in: Redis, DynamoDB
---
### 3.7 Document Data Model

- **Level**: Logical

- **Idea**: Stores semi-structured data in documents (JSON, XML)

- **Use**: Flexible, nested data

- **Example** (json):

{
  "StudentID": 101,
  "Name": "Alice",
  "Courses": ["Math","Physics"]
}


**Used** in: MongoDB, CouchDB
---
### 3.8 Columnar / Column-Family Data Model

- **Level**: Logical

- **Idea**: Data stored column-wise instead of row-wise

- **Use**: Analytics, big data workloads

- **Example**: DB: Cassandra, HBase

### 3.9 Graph Data Model

- **Level**: Logical

- **Idea**: Data represented as nodes (entities) and edges (relationships)

- **Use**: Social networks, recommendation systems

- **Example**:

(Alice)-[:FRIEND]->(Bob)
(Alice)-[:ENROLLED]->(Math)


- **Used**in: Neo4j, Amazon Neptune
---
  