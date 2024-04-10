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

SELECT first_name, job_title, max_salary FROM employees e
JOIN jobs j ON e.employee_id = job_id
ORDER BY max_salary ASC /*/ falta completar
