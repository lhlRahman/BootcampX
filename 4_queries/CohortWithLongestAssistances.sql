SELECT cohorts.name as name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests 
JOIN students
ON students.id = assistance_requests.student_id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY AVG(completed_at - started_at) DESC
LIMIT 1;