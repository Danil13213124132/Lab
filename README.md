# Lab

Саму БД залить не вышло, так как salaries файл больше 25 mb
![image](https://user-images.githubusercontent.com/118755225/203135937-1a98d9a1-4834-4c71-8d9a-30b15c219572.png)


Запросы дублирую:

1) SELECT first_name, last_name FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1990-12-31') AND (birth_date < '1952-11-21') AND (gender = 'F');

2) SELECT x.dept_no, MAX(x.summary) FROM (SELECT s.dept_no, SUM(s.sum) as summary FROM (SELECT employees.emp_no, SUM(salaries.salary) as sum, dept_emp.dept_no FROM employees JOIN salaries ON employees.emp_no JOIN dept_emp ON employees.emp_no GROUP BY employees.emp_no) as s GROUP BY s.dept_no) as x;
