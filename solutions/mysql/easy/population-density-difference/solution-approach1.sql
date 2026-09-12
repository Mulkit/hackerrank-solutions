-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
-- Problem     Population Density Difference
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:11 p.m.
-- Technique   aggregate-function-difference
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the scalar difference between the maximum and minimum values of the population column across all rows in the CITY table.
-- Interview   Before: "How would you find the range of a numerical column?" After: "You can use the MAX and MIN aggregate functions to compute the difference in O(N) time, where N is the number of rows in the table."
-- Pitfalls    (1) Failing to account for potential NULL values in the population column, which are ignored by aggregate functions but might affect business logic.  (2) Assuming the table contains at least two rows, as the result will be NULL if the table is empty or contains only one row.
-- ──────────────────────────────────────────────────

SELECT MAX(POPULATION) - MIN(POPULATION) from CITY;
