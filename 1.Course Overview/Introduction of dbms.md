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



# 📚 Schemas and Instances in DBMS

🔹 1. What is a Schema?

A schema is the overall structure or blueprint of a database.

It defines how the data is organized and how relationships are maintained.

Think of it like a plan of a building → it tells where rooms, doors, windows will be, but not who is living there.

✅ Example (Student Database):

Schema defines:

A Student table with attributes: Roll_No, Name, Course, Marks.

Relationships between Student and Course.

👉 Schema is fixed, it doesn’t change frequently.

🔹 2. What is an Instance?

An instance is the actual content (data) stored in the database at a particular moment.

Think of it like the current state of the building → who is living inside, furniture, etc.

✅ Example (Student Table):

Schema (Structure):

CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);


Instance (Data at a moment):

Roll_No	Name	Course	Marks
101	Rahul	    B.Tech	 85
102	Priya	    B.Sc	 90
103	Aman	    B.Com	 78

👉 If we add or delete rows, instance changes, but schema remains the same.

📌 Types of Schemas in DBMS
🔹 1. Physical Schema

Defines how data is stored physically in the storage devices (hard disk, SSD, etc.).

It deals with low-level details → files, indexes, blocks, pointers, hashing, compression.

Concerned with efficiency and performance.

✅ Example:

A table Student is stored in a data file named student_data.db.

Index created on Roll_No for faster searching.

Data stored in B+ Tree structure internally.

👉 Users (like students, faculty) don’t see this. Only the DBA (Database Administrator) manages it.

🔹 2. Logical Schema

Defines the structure of the database.

It describes what data is stored and what relationships exist among data.

Independent of physical storage.

Concerned with business requirements, not hardware.

✅ Example:
CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration INT
);


👉 This schema tells us there are 2 tables, and attributes, but not how or where they are stored.

🔹 3. View Schema (External Schema)

Defines what part of the database a user is allowed to see.

Provides different views for different users → ensures security & simplicity.

A single database may have multiple views for different users.

✅ Example:

Suppose in Student table we don’t want to show Marks to all users:

CREATE VIEW StudentInfo AS
SELECT Roll_No, Name, Course FROM Student;


Faculty may see: Name, Marks.

Students may see only: Name, Course.

Admin may see all fields.

👉 Helps in data hiding and security.

🔹 4. Relationship Between Schemas
       External Level  →  View Schema
       -------------------------------
       User Views (restricted access)

       Conceptual Level → Logical Schema
       -------------------------------
       Tables, Attributes, Relationships

       Internal Level  → Physical Schema
       -------------------------------
       Data files, indexes, storage structures


👉 Example:

Physical Schema: Data stored as files with indexes.

Logical Schema: Student table with Roll_No, Name, Course, Marks.

View Schema: Student view with only Name, Course.

🔹 Key Differences Between the Schemas
Feature	        Physical Schema	     Logical Schema   	             View Schema
Focus	        Storage details	    Database structure	               User interaction
Audience	    DBA	Developers,     Designers	End Users
Visibility	    Hidden from users	Visible to developers	        Visible to specific users
Change Frequency	Rarely changes	Changes when DB design changes	Changes often (as per user needs)



📌 Physical Data Independence in DBMS
🔹 1. What is Data Independence?

Data Independence means the ability to change one level of schema without affecting the higher levels.

It is the main feature of the 3-level architecture (Physical, Logical, View).

There are two types:

Physical Data Independence

Logical Data Independence

🔹 2. What is Physical Data Independence?

Definition: Ability to change the physical schema (storage details) without affecting the logical schema or application programs.

In simple words → if we change how data is stored, users & developers don’t need to change their queries or applications.

🔹 3. Why is it Needed?

Databases are huge and may need optimization (faster access, less memory).

If every small change in storage required developers to rewrite queries → it would be a nightmare.

Physical Data Independence protects developers & users from storage details.

🔹 4. Example

Suppose we have a Student table:

CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);


Current physical storage:

Student records stored in a heap file (unsorted).

Change in physical schema:

DBA decides to store records in a B+ Tree index based on Roll_No for faster searching.

Or DBA compresses the data files to save space.

👉 Even after this change:

SELECT Name, Marks FROM Student WHERE Roll_No = 101;


query remains the same.

🔹 5. Advantages

Developers don’t worry about storage details.

Improves database performance without disturbing applications.

Makes the system more flexible and maintainable.