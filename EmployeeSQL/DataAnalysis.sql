-- Q1: List the following details of each employee:

SELECT 
		Employees.emp_no AS "Employee Number",
		Employees.first_name AS "First Name",
		Employees.last_name AS "Last Name",	
		Employees.gender AS "Gender", 
		Salaries.salary As "Salary"
	From 
		Employees
	FULL OUTER JOIN
		Salaries 
		on Employees.emp_no = Salaries.emp_no;

-- Q2: List employees who were hired in 1986

	SELECT 
		emp_no as "Employee Number", 
		first_name as "First Name", 
		last_name as "Last Name", 
		hire_date as "Hire Date"
	FROM
		Employees
	WHERE 
		hire_date BETWEEN '1986-01-01' AND '1986-12-31'

-- Q3 List the manager of each department

	SELECT 
		Department_Manager.dept_no As "Department Number",
		Departments.dept_name As "Department Name",
		Department_Manager.emp_no As "Manager Employee Number",
		Employees.first_name As "First Name",
		Employees.last_name AS "Last Name",
		Department_Manager.from_date As "From",
		Department_Manager.to_date As "To"
	FROM
		Department_Manager
	
	LEFT JOIN
		Employees
		on Employees.emp_no = Department_Manager.emp_no
	
	LEFT JOIN
		Departments
		on Department_Manager.dept_no = Departments.dept_no;

-- Q4: List the department of each employee

	SELECT 
		Employees.emp_no As "Employee Number",
		Departments.dept_name As "Department",
		Employees.first_name As "First Name",
		Employees.last_name As "Last Name"	
	FROM
		Department_Employee	
	FULL OUTER JOIN
		Employees		
		on Department_Employee.emp_no = Employees.emp_no
	LEFT JOIN
		Departments
		on Departments.dept_no = Department_Employee.dept_no;

--Q5:List all employees whose first name is "Hercules" and last names begin with "B."

SELECT 
	emp_no As "Employee Number",
	first_name As "First Name", 
	last_name As "Last Name"
FROM
 	Employees
WHERE
	first_name = 'Hercules' AND last_name lIKE 'B%';
	
-- Q6

	SELECT 
		Employees.emp_no As "Employee Number",
		Departments.dept_name As "Department",
		Employees.first_name As "Employee First Name",
		Employees.last_name As "Employee Last Name"
	FROM
		Department_Employee	
	JOIN
		Employees		
		on Department_Employee.emp_no = Employees.emp_no
	JOIN
		Departments
		on Departments.dept_no = Department_Employee.dept_no
	WHERE
		Departments.dept_name = 'Sales';

--Q7

	SELECT 
		Employees.emp_no AS "Employee Name",
		Departments.dept_name AS "Department",
		Employees.first_name As "First Name",
		Employees.last_name As "Last Name"
	FROM
		Department_Employee	
	JOIN
		Employees		
		on Department_Employee.emp_no = Employees.emp_no
	JOIN
		Departments
		on Departments.dept_no = Department_Employee.dept_no
	WHERE
		Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development';

--Q8

	SELECT 
		last_name, COUNT(last_name)
	FROM 
		employees
	GROUP BY 
		last_name
	ORDER BY 
		COUNT(last_name) DESC;

--Epilogue 

--Update emp_no 499942 to my name:

UPDATE 
	employees 
SET 
	birth_date = '1984-09-06',
	first_name = 'Shilpa',
	last_name = 'Nagendra',
	hire_date = '2020-12-21'
WHERE 
	emp_no = 499942

select * from employees where first_name = 'Shilpa'

