-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:48 p.m.
-- Technique   aggregate-max-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset for values strictly less than the threshold and computes the maximum of the remaining subset before rounding to four decimal places.
-- Interview   Before: "How would you find the largest latitude below a specific threshold?" After: "I would use a WHERE clause to filter the LAT_N column and apply the MAX aggregate function, resulting in O(N) time complexity to scan the table and O(1) space to store the result."
-- Pitfalls    (1) Using ROUND instead of TRUNCATE when the problem explicitly requires truncation to four decimal places.  (2) Including values equal to 137.2345 by using an incorrect comparison operator instead of the strictly less than requirement.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND (MAX(LAT_N),4) FROM STATION WHERE LAT_N < 137.2345;
