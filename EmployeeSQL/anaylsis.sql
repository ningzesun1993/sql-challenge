-- question 1
Select e.emp_no as "employee number", e.last_name as "last name", 
		e.first_name as "first name", e.gender, salaries.salary
from employees as e
left join salaries on 
e.emp_no = salaries.emp_no;

-- question 2

select first_name as "first name", last_name as "last name" from employees
where hire_date like '1986%'

-- question 3
select dm.dept_no as "department number", d.dept_name as "department name", 
		dm.emp_no as "employee number", e.last_name as "last name", 
		e.first_name as "first name", s.from_date as "start employment dates", 
		s.to_date as "end employment dates"
from dept_manager as dm
left join departments as d on
dm.dept_no = d.dept_no
left join employees as e on
dm.emp_no = e.emp_no
left join salaries as s on
dm.emp_no = s.emp_no

-- question 4

select de.emp_no as "employee number", e.last_name as "last name", 
		e.first_name as "first name", d.dept_name as "department name"
from dept_emp as de
left join employees as e on
de.emp_no = e.emp_no
left join departments as d on
d.dept_no = de.dept_no
order by d.dept_name

-- question 5

select * from employees
where first_name = 'Hercules'
and last_name like 'B%'

-- question 6

select de.emp_no as "employee number", e.last_name as "last name", 
		e.first_name as "first name", d.dept_name as "department name"
from dept_emp as de
left join employees as e on
de.emp_no = e.emp_no
left join departments as d on
d.dept_no = de.dept_no
where d.dept_name = 'Sales'

-- question 7

select de.emp_no as "employee number", e.last_name as "last name", 
		e.first_name as "first name", d.dept_name as "department name"
from dept_emp as de
left join employees as e on
de.emp_no = e.emp_no
left join departments as d on
d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by d.dept_name

-- question 8

select last_name as "last name", count(last_name) as "frequency of last name"
from employees 
group by last_name
order by "frequency of last name" desc