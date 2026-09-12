-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Problem     Weather Observation Station 13
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:47 p.m.
-- Technique   aggregate-sum-with-range-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset using a strict inequality range on the LAT_N column before calculating the sum and rounding the result to four decimal places.
-- Interview   Before: "How would you calculate the sum of latitudes within a specific range?" After: "I use a WHERE clause with strict inequality operators to filter the rows, then apply SUM and ROUND functions. This approach runs in O(N) time complexity, where N is the number of rows in the STATION table."
-- Pitfalls    (1) Using inclusive operators like <= or >= instead of the strict < and > required by the problem statement.  (2) Rounding the individual LAT_N values before summing them instead of rounding the final sum result.  (3) Failing to use the ROUND function, which results in the default precision rather than the required four decimal places.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE 38.7880 < LAT_N AND LAT_N < 137.2345;

