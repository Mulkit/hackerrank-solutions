-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
-- Problem     Weather Observation Station 19
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 09:29 p.m.
-- Technique   aggregate-function-euclidean-distance
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the Euclidean distance between two points defined by the extreme values of latitude and longitude using standard SQL aggregate functions.
-- Interview   Before: "How would you calculate the distance between two points defined by min/max coordinates?" After: "I used aggregate functions to find the bounds in O(N) time, then applied the Euclidean distance formula with ROUND to meet the 4-decimal requirement."
-- Pitfalls    (1) Failing to use the ROUND function results in default precision, which violates the 4-decimal digit requirement.  (2) Incorrectly pairing LAT_N and LONG_W bounds by using separate subqueries instead of aggregate functions on the full table.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
 You need the distance between:

Point 1: (MIN(LAT_N), MIN(LONG_W))
Point 2: (MAX(LAT_N), MAX(LONG_W))

The Euclidean distance formula is:

$$ \sqrt{(x_2-x_1)^2+(y_2-y_1)^2} $$

*/

SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)) , 4 ) 
FROM STATION;



