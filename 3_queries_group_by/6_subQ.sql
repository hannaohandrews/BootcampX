SELECT (
  SELECT count(assignments)
  FROM assignments
)- count(assignment_submissions)
FROM assignment_submissions
JOIN students ON students.id = student_id 
WHERE students.name = 'Ibrahim Schimmel';

SELECT (
  SELECT count(*)
  FROM table_name
) as total, other_column
FROM other_table_name
ORDER BY total;


SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students
  FROM students 
  JOIN cohorts on cohorts.id = cohort_id 
  GROUP by cohorts
) as total_table;