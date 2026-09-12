-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:38 p.m.
-- Technique   group-by-aggregation-limit
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query calculates total earnings per employee, groups identical earnings, sorts them in descending order, and selects the top record to identify the maximum earnings and its frequency.
-- Interview   Before: "I would iterate through the table to find the max and then count." After: "I used a GROUP BY on the calculated earnings to find the maximum in O(N log N) time, which efficiently handles the requirement to return both the max value and its count in one pass."
-- Pitfalls    (1) Failing to group by the calculated expression results in an invalid query in strict SQL modes.  (2) Using an incorrect sort order would return the minimum earnings instead of the maximum.  (3) Omitting the LIMIT clause would return all earnings levels instead of just the maximum.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT (MONTHS * SALARY) AS TOTAL_EARNING, COUNT(*)
 FROM EMPLOYEE
 GROUP BY TOTAL_EARNING
 ORDER BY TOTAL_EARNING DESC
 LIMIT  1;
 
 
 


