-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Problem     Employee Salaries
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 01:50 p.m.
-- Technique   simple-select-filter-sort
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters the employee dataset based on salary and tenure thresholds before returning the names sorted by their unique identifier.
-- Interview   Before: "How would you retrieve specific employee names based on salary and tenure?" After: "I would use a SELECT statement with a WHERE clause for the conditions and an ORDER BY clause for the ID, resulting in O(N log N) time complexity due to the sorting requirement."
-- Pitfalls    (1) Confusing the strict inequality operators for salary and months with inclusive ones.  (2) Failing to sort by employee_id in ascending order as explicitly required by the problem statement.  (3) Selecting the wrong column instead of the name attribute.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT NAME FROM EMPLOYEE 
WHERE (SALARY > 2000) AND (MONTHS < 10 )
ORDER BY EMPLOYEE_ID ASC;
