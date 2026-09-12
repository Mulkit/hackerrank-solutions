-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Problem     Weather Observation Station 16
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:35 p.m.
-- Technique   min-aggregation-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the smallest value in the LAT_N column that satisfies the strict inequality constraint and applies rounding to the result.
-- Interview   Before: "How would you find the smallest latitude above a specific threshold?" After: "I filter the dataset using a WHERE clause for values greater than 38.7780, then apply MIN and ROUND to return the result in O(N) time."
-- Pitfalls    (1) Using an incorrect comparison operator like >= instead of > violates the strict inequality requirement.  (2) Failing to use the ROUND function results in an incorrect number of decimal places as specified by the problem.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(MIN(LAT_N) , 4) 
FROM STATION
WHERE LAT_N > 38.7780;
