SELECT COUNT(assistance_requests.*) as total_assistances, student.name as name
FROM assistance_requests 
JON students ON students.id = student_id 
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;

