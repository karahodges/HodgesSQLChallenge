CREATE TABLE employees(
	emp_id int,
	b_day VARCHAR,
	f_name VARCHAR,
	l_name VARCHAR,
	gender VARCHAR,
	h_date VARCHAR
);

SELECT * FROM employees;

CREATE TABLE departments(
	dept_num VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE emp_dep(
	emp_id INT,
	dept_num VARCHAR,
	start_d VARCHAR,
	end_d VARCHAR
);

SELECT * FROM emp_dep;
DROP TABLE manager_dep;
CREATE TABLE manager_dept(
	dept_num VARCHAR,
	emp_id INT,
	start_d VARCHAR,
	end_d VARCHAR

);

SELECT * FROM manager_dept;

CREATE TABLE salary(
	emp_id INT,
	salary INT,
	start_d VARCHAR,
	end_d VARCHAR
);

SELECT * FROM salary;

CREATE TABLE title(
	emp_id INT,
	title VARCHAR,
	start_d VARCHAR,
	end_d VARCHAR
);

SELECT * FROM employees;

SELECT e.emp_id, e.f_name, e.l_name, e.gender, s.salary
FROM employees e
JOIN salary s
ON (e.emp_id=s.emp_id);

SELECT * FROM emp_dep;

SELECT * 
FROM emp_dep
WHERE start_d LIKE '%1986%';

SELECT * FROM departments;

SELECT m.dept_num, m.emp_id,m.start_d, m.end_d, e.f_name, e.l_name, d.dept_name
FROM manager_dept m
JOIN employees e
ON(m.emp_id=e.emp_id)
JOIN departments d 
ON (m.dept_num=d.dept_num);

SELECT * FROM employees;

SELECT e.emp_id, e.f_name, e.l_name, d.dept_name
FROM employees e
JOIN departments d
ON (e.dept_num=d.dept_num);

SELECT f_name, l_name
FROM employees
WHERE f_name LIKE '%Hercules%'
AND l_name LIKE 'B%';

SELECT e.emp_id, e.f_name, e.l_name, d.dept_name
FROM employees e
JOIN emp_dep m
ON (e.emp_id=m.emp_id)
JOIN departments d
ON (m.dept_num=d.dept_num)
WHERE d.dept_name='Sales';

SELECT e.emp_id, e.f_name, e.l_name, d.dept_name
FROM employees e 
JOIN emp_dep m
ON (e.emp_id=m.emp_id)
JOIN departments d
ON (m.dept_num=d.dept_num)
WHERE d.dept_name='Sales' 
OR d.dept_name='Development';

SELECT l_name,count(l_name) AS total_named 
FROM employees 
GROUP BY l_name
ORDER BY COUNT(l_name) DESC;

SELECT * 
FROM employees 
WHERE emp_id=499942;