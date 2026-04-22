-- Create table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 30000),
(2, 'Riya', 'IT', 50000),
(3, 'John', 'IT', 60000),
(4, 'Sara', 'Finance', 45000),
(5, 'Raj', 'HR', 35000);

-- 1. Fetch all employees
SELECT * FROM employees;

-- 2. Find employees in IT department
SELECT * FROM employees WHERE department = 'IT';

-- 3. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 4. Highest salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- 5. Order employees by salary descending
SELECT * FROM employees ORDER BY salary DESC;

-- 6. Count employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 7. Employees earning above average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
