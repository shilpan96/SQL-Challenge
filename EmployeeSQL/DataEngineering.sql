--Importing CSV Files 

CREATE TABLE Employees (

	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	gender VARCHAR(32),
	hire_date DATE	
);

select * from Employees

CREATE TABLE Departments(
	dept_no VARCHAR(32) NOT NULL, 
	PRIMARY KEY (dept_no),
	dept_name VARCHAR NOT NULL
	
);

select * from Departments

CREATE TABLE Department_Employee(
	emp_no INT NOT NULL, 
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(32) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	from_date DATE,
	to_date DATE
);

select * from Department_Employee

CREATE TABLE Department_Manager(
	dept_no VARCHAR(32) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	emp_no INT NOT NULL, 
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	from_date DATE,
	to_date DATE
);

select * from department_manager;

CREATE TABLE Salaries(
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	salary INT,
	from_date DATE,
	to_date DATE
);

select * from Salaries;

CREATE TABLE Titles(
	emp_no INT NOT NULL,  
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	title VARCHAR(32),
	from_date DATE,
	to_date DATE
);

SELECT * from Titles

