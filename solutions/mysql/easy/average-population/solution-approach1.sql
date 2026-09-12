-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
-- Problem     Average Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:09 p.m.
-- Technique   aggregate-function-rounding
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the arithmetic mean of the population column and applies the floor rounding logic via the standard SQL round function.
-- Interview   Before: "How would you calculate the average population rounded down?" After: "I used AVG to compute the mean and ROUND to truncate the result, achieving O(N) time complexity where N is the number of rows in the CITY table."
-- Pitfalls    (1) Using ROUND instead of FLOOR may lead to incorrect results if the rounding behavior of the specific SQL dialect differs from the requirement to round down.  (2) Failing to account for potential NULL values in the POPULATION column, which are ignored by the AVG function.
-- ──────────────────────────────────────────────────

SELECT ROUND(AVG(POPULATION)) FROM CITY;


