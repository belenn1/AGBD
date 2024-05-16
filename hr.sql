SELECT first_name, last_name,salary FROM employees
WHERE salary <6000

SELECT first_name,last_name,department_name, state_province FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id

SELECT e.first_name AS nomJefes, m.first_name AS nomEmpleado FROM employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY nomJefes 

SELECT e.first_name AS nomEmpleado,e.last_name AS ApellidoEmp, d.first_name AS nomHIjos FROM employees e
JOIN dependents d ON e.employee_id = d.employee_id
ORDER BY d.first_name ASC

SELECT first_name, last_name, job_title, max_salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
ORDER by max_salary DESC

SELECT first_name, last_name, department_name, salary FROM employees e
JOIN departments d on e.department_id = d.department_id
ORDER by first_name, department_name ASC

SELECT first_name, last_name, state_province FROM employees e
JOIN departments d on e.department_id = e.department_id
JOIN locations l on d.location_id = l.location_id
ORDER by first_name, state_province ASC

SELECT first_name, last_name, country_name, region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER by first_name ASC

SELECT country_name, region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER by country_name, region_name DESC

SELECT first_name, last_name, job_title, min_salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
ORDER by min_salary DESC

