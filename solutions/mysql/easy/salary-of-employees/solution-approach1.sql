-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Problem     Employee Salaries
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 01:50 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT NAME FROM EMPLOYEE 
WHERE (SALARY > 2000) AND (MONTHS < 10 )
ORDER BY EMPLOYEE_ID ASC;
