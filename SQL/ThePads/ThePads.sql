SELECT CONCAT(o.name, '(', SUBSTR(o.occupation, 1, 1), ')')
FROM occupations o
ORDER BY o.name ASC;

SELECT CONCAT('There are a total of ', COUNT(o.name), ' ', LOWER(o.occupation), 's.') as line
FROM occupations o
GROUP BY o.occupation
ORDER BY line ASC;