create table "titles" (
    "title_id" varchar(30)   not null,
    "title" varchar(30)   not null,
    constraint "pk_titles" primary key (
        "title_id"
     )
);


create table "salaries" (
    "emp_no" integer   not null,
    "salary" integer   not null,
    constraint "pk_salaries" primary key (
        "emp_no"
     )
);

create table "departments" (
    "dep_no" varchar(30)   not null,
    "dept_name" varchar(30)   not null,
    constraint "pk_departments" primary key (
        "dep_no"
     )
);


create table "employees" (
    "emp_no" integer   not null,
    "emp_title_id" varchar(30)   not null,
    "birth_date" date   not null,
    "first_name" varchar(30)   not null,
    "last_name" varchar(30)   not null,
    "sex" varchar(1)   not null,
    "hire_date" date   not null,
    constraint "pk_employees" primary key (
        "emp_no"
     )
);

create table "dept_manager" (
    "dept" varchar(30)   not null,
    "emp_no" integer   not null,
    constraint "pk_dept_manager" primary key (
        "emp_no"
     )
);

create table "dept_emp" (
    "emp_no" integer   not null,
    "dept_no" varchar(30)   not null,
    constraint "pk_dept_emp" primary key (
        "emp_no", "dept_no"
     )
);

alter table "salaries" add constraint "fk_salaries_emp_no" FOREIGN key("emp_no")
references "employees" ("emp_no");
 
alter table "employees" add constraint "fk_employees_emp_title_id" FOREIGN key("emp_title_id")
references "titles" ("title_id");

alter table "dept_manager" add constraint "fk_dept_manager_dept" FOREIGN key("dept")
references "departments" ("dep_no");

alter table "dept_manager" add constraint "fk_dept_manager_emp_no" FOREIGN key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_emp_no" FOREIGN key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_dept_no" FOREIGN key("dept_no")
references "departments" ("dep_no");