SELECT day, COUNT(id) 
FROM assignments
GROUP BY day 
HAVING COUNT(id) >= 10
ORDER BY day;
