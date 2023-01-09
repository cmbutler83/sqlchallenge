CREATE TABLE "departments" (
  "dept_no" varchar(6),
  "dept_name" varchar(30),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
  "emp_no" int,
  "dept_no" varchar(6),
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_dept_manager.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no")
);

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "title" (
  "title_id" varchar(6),
  "title" varchar(30),
  PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
  "emp_no" int,
  "title_id" varchar(6),
  "birth_date" date,
  "first_name" varchar(25),
  "last_name" varchar(25),
  "sex" varchar(1),
  "hire_date" date,
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_employees.title_id"
    FOREIGN KEY ("title_id")
      REFERENCES "title"("title_id")
);

CREATE TABLE "dept_emp" (
  "emp_no" int,
  "dept_no" varchar(6),
  PRIMARY KEY ("emp_no", "dept_no")
);



