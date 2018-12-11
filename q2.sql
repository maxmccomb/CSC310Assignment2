/*  Max McComb Question 2*/
USE csc310
/*a*/
SELECT emp_fname, emp_lname, street, city, state
FROM employee
WHERE start_date <= "1988-12-11";

/*b*/
SELECT emp_fname, emp_lname
FROM employee
WHERE dept_id IN (SELECT dept_id
                FROM department
                WHERE dept_name = "Sales");

/*c*/
SELECT emp_lname, department.dept_name
FROM employee, department
WHERE emp_id = dept_head_id;

/*d*/
SELECT emp_fname, emp_lname
FROM employee
WHERE bene_health_ins = 'N' AND bene_day_care = 'Y' AND dept_id IN (SELECT dept_id
                                                                    FROM department
                                                                    WHERE dept_name = 'Sales');

/*e*/
SELECT emp_id, emp_lname
FROM employee
WHERE emp_id = department.dept_head_id OR emp_id = sales_order.sales_rep

/*f*/
SELECT emp_id, emp_lname
FROM employee
WHERE emp_id = department.dept_head_id AND emp_id = sales_order.sales_rep

/*g*/

/*h*/
SELECT dept_name, COUNT(emp_id)
FROM department, employee
WHERE employee.dept_id = department.dept_id

/*i*/
SELECT dept_name, COUNT(emp_id)
FROM department, employee
WHERE employee.dept_id = department.dept_id AND COUNT(emp_id)>10

/*j*/
SELECT dept_name, AVG(salary), COUNT(emp_id)
FROM department, employee
WHERE employee.dept_id = department.dept_id

/*a*/
