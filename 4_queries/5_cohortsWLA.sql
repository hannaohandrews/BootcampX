SELECT cohorts.name, avg() as average_wait_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;

average amount of time that student s are waiting for an assistance reqeust 

duration between assistance request being created an dstarted