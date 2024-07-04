DELETE FROM employees WHERE department_id= 2
DELETE FROM locations WHERE country_id = 'CA';

SELECT e.last_name, e.first_name, d.department_name, c.country_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE c.country_id = 'UK' 

DELETE FROM jobs
WHERE job_id NOT IN (
    SELECT job_id
    FROM employees
);

