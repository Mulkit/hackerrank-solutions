-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:27 p.m.
-- Technique   string-replacement-aggregation
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the difference between the actual average salary and the average salary after removing all '0' characters from each entry, then rounds the result up to the nearest integer.
-- Interview   Before: "How would you calculate the error caused by a broken keyboard key?" After: "I would use the REPLACE function to strip zeros from the salary column before computing the average, then subtract this from the actual average. This approach runs in O(N) time, where N is the number of employees."
-- Pitfalls    (1) Failing to use the CEIL function, which is required to round the error up to the next integer as specified in the problem statement.  (2) Incorrectly applying the REPLACE function to the entire column average instead of individual salary values before aggregation.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/


SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, '0',''))) FROM EMPLOYEES;
