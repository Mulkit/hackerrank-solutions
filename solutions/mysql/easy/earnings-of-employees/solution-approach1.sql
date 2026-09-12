-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:38 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT (MONTHS * SALARY) AS TOTAL_EARNING, COUNT(*)
 FROM EMPLOYEE
 GROUP BY TOTAL_EARNING
 ORDER BY TOTAL_EARNING DESC
 LIMIT  1;
 
 
 


