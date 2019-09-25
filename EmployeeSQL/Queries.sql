1.select emp_no, first_name, last_name, gender, (select salary from salaries where emp_no = employees.emp_no) As salary
from employees

2.select emp_no, first_name,hire_date
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

3.select emp_no, dept_no, from_date, to_date,
(select dept_name from departments where dept_no = dept_manager.dept_no) As department_name
from dept_manager;

4.select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no

5.select emp_no,first_name,last_name 
from employees
where first_name like 'Hercules' and last_name like 'B\.%';

6.select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no
where departments.dept_name = 'Sales';

7.select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

8.select last_name,count(*) from employees
group by last_name
order by count(*) desc;