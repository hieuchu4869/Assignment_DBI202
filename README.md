# 📚 Learning Management System (LMS)

A mini project simulating an online Learning Management System (LMS), developed for Lab 3 by Group 6.

## 🔍 Overview

In the context of modern education, managing online courses is essential for both instructors and learners. This system supports:
- Course creation and enrollment
- Assignment submission and grading
- Certificate issuance and learning progress tracking

## 🧠 Features

### 👤 User Management
- User registration and login
- Edit personal information
- Role-based access (Lecturer / Student)

### 👨‍🏫 Lecturer Operations
- Create and manage courses
- Assign exercises to courses
- Grade submissions
- View enrolled students
- Issue certificates

### 👨‍🎓 Student Operations
- Enroll in courses
- Submit assignments
- View scores and certificates
- Access course info and content

### 📊 Progress Tracking
- Store assignment submissions with timestamps and grades
- Generate learning statistics
- Certificate history tracking

## 🗃️ Database Design

### ER Diagram
The system uses an ER model that includes the following entities and relationships:
- **User**
- **Course**
- **Assignment**
- **Submits**
- **Enrolls**
- **Lecturer**
- **Lecture_in**
- **Certificate**

> Many-to-many relationships such as Enrolls, Submits, and Lecture_in are represented by junction tables.

### Example Tables
- `User(UserID, Password, Email, FullName)`
- `Course(CourseID, Title, StartDate, EndDate, Description)`
- `Assignment(AssignmentID, Title, Description, DueDate, CourseID)`
- `Submits(UserID, AssignmentID, SubmitTime, Grade, FileLink)`
- `Certificate(UserID, CourseID, IssuedDate, Grade)`
- etc.

## 🛠️ Technology Stack
- **SQL**: for database queries and relational modeling
- **Relational DBMS**: Microsoft SQL Server

## 🗺️ Diagram
![image](https://github.com/user-attachments/assets/656ddf27-782b-48c6-b840-a985918a9007)

## 👨‍💻 Group Members

| Name | Student ID |
|------|------------|
| Hoàng Việt Anh | HE190772 |
| Chu Minh Hiếu | HE195199 |
| Nguyễn Việt Anh | HE191009 |
| Nguyễn Xuân Hải Anh | HE200053 |
| Nguyễn Phúc Anh Tuấn | HE190953 |
---

