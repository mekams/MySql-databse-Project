# 🗃️ Integrated Database Solution for Global Computer Solutions (GCS)

A comprehensive MySQL-based relational database system to streamline **Project Management**, **Employee Assignment**, and **Billing** for Global Computer Solutions (GCS).

Developed as part of the **MSc Computer Science** coursework for the **Database Design & Development (CMP7245)** module.

---

## 📁 Project Overview

This project covers the full lifecycle of database development:

- **Design**: Entity-Relationship Diagram (ERD), Relational Schema, Assumptions
- **Development**: SQL table definitions, sample data, and MySQL queries
- **Security**: Role-Based Access Control (RBAC) using MySQL roles and privileges

---

## 🛠️ Tech Stack

- **Database**: MySQL
- **Tools**: MySQL Workbench
- **Language**: SQL

---

## 📐 Database Design

### Entity-Relationship Diagram (ERD)

Includes key entities like:

- `Stakeholder` (superclass)
- `Customer`, `Employee` (subclasses)
- `Project`, `Task`, `Plan`, `Skill`, `Work_Log`, `Bill`
- Many-to-Many relations: `Employee_Project`, `Employee_Task`, `Employee_Skill`
- Multivalued attribute table: `Plan_Type`

> Logical and physical schema provided in project files.

---

## 🔍 Example SQL Queries

```sql
-- 1. All employees hired after Jan 1, 2024
SELECT * FROM Employee WHERE Date_of_Hire > '2024-01-01';

-- 2. Employees with skill 'Web Development'
SELECT Skill.Description, CONCAT(e.First_Name, " ", e.Last_Name) AS Full_Name
FROM Employee e
JOIN Employee_Skill es ON e.Employee_ID = es.Employee_ID
JOIN Skill ON es.Skill_ID = Skill.Skill_ID
WHERE Skill.Description = 'Web Development';

-- 3. Total hours worked by each employee
SELECT e.First_Name, e.Last_Name, SUM(wl.Total_Hours_Worked) AS Total_Hours_Worked
FROM Employee e
JOIN Work_Log wl ON e.Employee_ID = wl.Employee_ID
GROUP BY e.Employee_ID;
