# 📘 Relational Data Model — Notes

The **Relational Data Model** stores data in the form of **tables (relations)**.  
Each table contains:

- **Rows → Tuples (records)**
- **Columns → Attributes**
- **Primary Key → Uniquely identifies each row**

---

## 🔧 Relational Algebra Operators

### 🧩 Basic Operators

| Operator Name | Symbol | Purpose |
|--------------|--------|---------|
| **Selection** | σ | Selects specific **rows** based on a condition |
| **Projection** | π | Selects specific **columns** and remove dublicates|
| **Union** | ∪ | Combines results of two relations (no duplicates) |
| **Difference** | − | Returns rows present in **one relation but not the other** |
| **Cartesian Product** | × | Combines every row of two tables |
| **Rename** | ρ | Renames tables or attributes |

---

### 🧩 Logical Operators (Used in Selection)

| Operator | Meaning | Example |
|----------|---------|---------|
| **AND** | Both conditions must be true | `σ (Age > 20 AND Course = 'BCA') (Student)` |
| **OR** | Any one condition must be true | `σ (Course = 'BCA' OR Course = 'BBA') (Student)` |

---

### 🧩 Derived Operators

| Operator Name | Symbol | Purpose |
|--------------|--------|---------|
| **Join** | ⨝ | Combines related rows from two tables using a common attribute |
| **Intersection** | ∩ | Outputs rows common to both relations |
| **Division** | ÷ | Used for queries like "Find students enrolled in **all** courses" |

---

## 📝 Example Query

Find students with **Age > 20**:

