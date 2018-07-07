SELECT s.name
FROM students s
INNER JOIN friends f ON f.id = s.id
INNER JOIN packages ps ON ps.id = s.id
INNER JOIN packages pf ON pf.id = f.friend_id
WHERE ps.salary < pf.salary
ORDER BY pf.salary ASC
