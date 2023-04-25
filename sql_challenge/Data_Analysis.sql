select e.emp_no, e.first_name, e.last_name,e.sex,s.salary
from employees as e
left join salaries as s
on (e.emp_no=s.emp_no)
order by e.emp_no;

select e.first_name, e.last_name, e.hire_date
from employees as e
where hire_date between '1986-01-01' and '1986-12-31' ;

SELECT d.dep_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
join dept_manager dm
	on dm.dept = d.dep_no
join employees e
	on e.emp_no = dm.emp_no;

SELECT d.dep_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
join dept_emp de
	on de.dept_no = d.dep_no
join employees e
	on e.emp_no = de.emp_no;
	
SELECT first_name, last_name, sex
FROM EMPLOYEES
WHERE first_name = 'Hercules' 
	AND last_name like 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
	on e.emp_no = de.emp_no
JOIN departments d
	on d.dep_no = de.dept_no
WHERE
	d.dept_name = 'Sales'
	OR d.dept_name = 'Development';

select last_name, count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;