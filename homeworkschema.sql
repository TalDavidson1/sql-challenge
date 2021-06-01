-- create the tables
-- titles
create table titles (
	title_id varchar primary key,
	title varchar
);
-- select * from titles;
-- employees
create table employees (
	emp_no int primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);
--select * from employees;
-- departments
create table departments (
	dept_no varchar primary key,
	dept_name varchar
);
--select * from departments;
-- dpt_managers
create table dept_manager (
	dept_no varchar, 
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no, emp_no)
);
--select * from dept_manager;
-- dpt_employees
create table dept_emp (
	emp_no int, 
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, dept_no)
);

--select * from dept_emp;
-- salaries
create table salaries (
	emp_no int primary key,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

-- select * from salaries