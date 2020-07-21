SELECT cohorts.names as cohort_name, count(students.*) as student_count
FROM cohorts
GROUP BY cohort_name
JOIN students ON cohorts.id = student_id
HAVING count(students.*) >= 18
ORDER BY student_count;



