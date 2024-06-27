"1"
SELECT j.job_title AS JobTitle, 
COUNT(*) AS EmployeeCount,
SUM(e.salary) AS TotalSalary 
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id 
GROUP BY j.job_title;

"2"
SELECT first_name,last_name,department_name, job_title FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id

"3"
SELECT employee_id,last_name,first_name,email,phone_number,department_id FROM employees

UPDATE employees SET phone_number = "303.404.505";
WHERE phone_number is NULL

"4"

UPDATE employees SET salary = 
((SELECT salary + ((salary * 35)/100) AS salary FROM employees e  
JOIN jobs j ON e.job_id = j.job_id
WHERE salary < 8000 AND job_title = "Accountant" OR job_title = "Programmer"))

"5"




