SELECT c.company_code, c.founder, COUNT(DISTINCT(lm.lead_manager_code)), COUNT(DISTINCT(sm.senior_manager_code)), COUNT(DISTINCT(m.manager_code)), COUNT(DISTINCT(e.employee_code))
FROM company c
INNER JOIN lead_manager lm ON lm.company_code = c.company_code
INNER JOIN senior_manager sm ON sm.company_code = c.company_code
INNER JOIN manager m ON m.company_code = c.company_code
INNER JOIN employee e ON e.company_code = c.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC