-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:40 p.m.
-- Technique   subquery-min-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the specific western longitude associated with the smallest northern latitude exceeding the threshold by nesting a scalar subquery within the main filter.
-- Interview   Before: "How would you find the longitude for the smallest latitude above a specific value?" After: "I used a subquery to isolate the minimum latitude greater than 38.7780, then selected the corresponding longitude. This approach runs in O(N) time, ensuring we correctly handle the specific threshold requirement."
-- Pitfalls    (1) Failing to use the ROUND function results in incorrect output precision as required by the problem statement.  (2) Using an incorrect comparison operator instead of strictly greater than 38.7780 violates the problem constraints.  (3) Omitting the subquery filter causes the query to return the longitude for the global minimum latitude instead of the conditional minimum.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N) FROM STATION
    WHERE LAT_N > 38.7780);



