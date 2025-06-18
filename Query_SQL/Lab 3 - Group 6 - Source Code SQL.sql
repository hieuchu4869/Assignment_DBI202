 create database Online_Course_Student_Management

 use Online_Course_Student_Management
 go

create table Users (
    UserID int primary key ,
    FullName char ,
    Email char ,
    Password char ,
);


create table Course (
    CourseID int primary key ,
    Title char ,
    Descriptions char,
    StartDate date , 
    EndDat date ,
);


create table Lecture (
    Lecture_id int primary key,
    CourseID int ,
    Address char ,
    Full_name char, 
    Gender int 
	foreign key(CourseID) references Course(CourseID) ,
);


create table Assignment (
    Assignment_id int primary key , 
    CourseID int,
    Title char ,
    Descriptions char ,
    DueDate date,
    foreign key (CourseID) references Course(CourseID) 
);


create table Enrolls (
    UserId int ,
    CourseID int ,
    Enroll_date date,
    primary key (UserID, CourseID),
    foreign key (UserID) references Users(UserID) ,
    foreign key (CourseID) references Course(CourseID)
);

create table Submits (
    UserID int,
    Assignment_id int ,
    Submit_time date, 
    Grade decimal,
    FileLink char , 
    primary key (UserID, Assignment_id) ,
    foreign key (UserID) references Users(UserID) ,
    foreign key (Assignment_id) references Assignment(Assignment_id) 
);


create table Certificate (
    Certificate_id int primary key,
    UserID int ,
    CourseID int ,
    Issued_date date ,
    Grade decimal,
    foreign key (UserID) references Users(UserID) ,
    foreign key (CourseID) references Course(CourseID) 
);


create table Lecture_In(

	CourseID int ,
	LecturerID int , 
	primary key (CourseID, LecturerID) ,
	foreign key(CourseID) references Course(CourseID),
	foreign key(LecturerID) references Lecture(Lecture_id)

);

create table Assign_In(

	Ass_ID int ,
	CourseID int 
	primary key (CourseID, Ass_ID) ,
	foreign key(CourseID) references Course(CourseID),
	foreign key(Ass_ID) references Assignment(Assignment_id)

);