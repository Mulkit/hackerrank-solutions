-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
-- Problem     Weather Observation Station 15
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:53 p.m.
-- Technique   subquery-max-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the specific western longitude associated with the maximum northern latitude that satisfies the strict inequality constraint.
-- Interview   Before: "How would you find the longitude for the largest latitude under a threshold?" After: "I use a subquery to isolate the maximum latitude below 137.2345, then select the corresponding longitude. This approach runs in O(N) time to scan the table and ensures the result is rounded to four decimal places."
-- Pitfalls    (1) Using an incorrect comparison operator like <= instead of < violates the strict inequality requirement of the problem statement.  (2) Failing to round the output to four decimal places as explicitly required by the problem instructions.  (3) Assuming the subquery returns multiple rows when the problem implies a single maximum value for the latitude.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
