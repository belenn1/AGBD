"1"
SELECT j.job_title, COUNT(e.employee_id) AS cantidad_empleados, SUM(e.salary) AS gasto_total FROM employees e
JOIN jobs j on j.job_id = j.job_id
GROUP BY j.job_title
ORDER BY e.salary DESC; 

"2"
SELECT e.first_name, e.last_name, j.job_title, d.department_name,l.city FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

"3"
UPDATE employees SET salary = 
((SELECT salary + ((salary * 55)/100) AS salary FROM employees e  
JOIN departments d ON e.department_id = d.department_id
WHERE salary <7500 AND department_name = "IT" OR department_name = "Finance"))

"4"
DELETE FROM employees WHERE department_id= 2
DELETE FROM locations WHERE country_id = 'CA';

"5"
UPDATE employees SET phone_number = "333.444.555"
WHERE job_id = 15 AND phone_number is NULL

"6"
INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));
-----
INSERT INTO jobs (job_title, min_salary,max_salary)
VALUES ('Consultant', 1200 , 3000);
-----
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       105),
         ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       106),
         ('Laura', 'Fernandez', 'lfernandez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       107);
