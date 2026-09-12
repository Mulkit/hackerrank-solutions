-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 09:18 p.m.
-- Technique   aggregate-min-max-calculation
-- Time        O(N)
-- Space       O(1)
-- Insight     The Manhattan distance between two points (a, b) and (c, d) is calculated by summing the absolute differences of their respective coordinates.
-- Interview   Before: "How do I calculate the distance between two points defined by extreme values in a dataset?" After: "I use aggregate functions to find the min and max of each column, then compute the Manhattan distance in O(N) time, ensuring the result is rounded to four decimal places."
-- Pitfalls    (1) Failing to use the absolute value function, which results in incorrect negative distances when the minimum value exceeds the maximum value.  (2) Rounding the result prematurely before completing the full Manhattan distance summation, leading to precision errors.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
here we use |a-c|+|b-d|
*/
SELECT ROUND(abs(MIN(LAT_N) - max(LAT_N)) + abs(MIN(LONG_W) - max(LONG_W)) , 4) from station;




