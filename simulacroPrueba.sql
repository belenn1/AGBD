SELECT e.first_name,e.last_name,m.first_name AS manager ,e.salary,department_name, state_province FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN employees m ON e.manager_id = m.employee_id
ORDER BY e.salary ASC

SELECT min_salary, max_salary FROM jobs
UPDATE jobs SET max_salary = (max_salary - (max_salary * 25) /100)
UPDATE jobs SET min_salary = (min_salary - (min_salary * 25) /100)

