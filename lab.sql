USE employees;

SELECT first_name, last_name FROM employees 
WHERE (hire_date BETWEEN '1990-01-01' AND '1990-12-31') AND (birth_date < '1952-11-21') AND (gender = 'F');

SELECT x.dept_no, MAX(x.summary) FROM (SELECT s.dept_no, SUM(s.sum) as summary FROM (SELECT employees.emp_no, SUM(salaries.salary) as sum, dept_emp.dept_no FROM employees
JOIN salaries ON employees.emp_no
JOIN dept_emp ON employees.emp_no GROUP BY employees.emp_no) as s GROUP BY s.dept_no) as x;
