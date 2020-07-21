SELECT  student.name as student , AVG(assignment_submissions.duration.*) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE student.end_date = NULL 
GROUP BY student
ORDER BY average_assignment_duration DESC;


