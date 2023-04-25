select emp.emp_no, emp.first_name, emp.last_name,emp.sex,sal.salary
from employees as emp
left join salaries as sal
on (emp.emp_no=sal.emp_no)
order by emp.emp_no;

select emp.first_name, emp.last_name, emp.hire_date
from employees as emp
where hire_date between '1986-01-01' and '1986-12-31' ;

select dep.dep_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from departments dep
join dept_manager dm
	on dm.dept = dep.dep_no
join employees emp
	on emp.emp_no = dm.emp_no;

select dep.dep_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from departments dep
join dept_emp de
	on de.dept_no = dep.dep_no
join employees emp
	on emp.emp_no = de.emp_no;
	
select first_name, last_name, sex
from EMPLOYEES
where first_name = 'Hercules' 
	and last_name like 'B%';

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees emp
join dept_emp de
	on emp.emp_no = de.emp_no
join departments dep
	on dep.dep_no = de.dept_no
where
	dep.dept_name = 'Sales'
	OR dep.dept_name = 'Development';

select last_name, count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;