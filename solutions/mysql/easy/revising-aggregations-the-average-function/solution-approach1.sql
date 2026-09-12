-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - Averages
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:06 p.m.
-- Technique   aggregate-function-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters rows by the District column before calculating the arithmetic mean of the Population column using the AVG aggregate function.
-- Interview   Before: "How would you calculate the average population for a specific district?" After: "I would use the AVG aggregate function combined with a WHERE clause to filter by district, resulting in O(N) time complexity as the database performs a linear scan of the table."
-- Pitfalls    (1) Failing to use the correct string literal 'California' for the District filter.  (2) Assuming the AVG function handles NULL values in the Population column, which it ignores by default.
-- ──────────────────────────────────────────────────

SELECT AVG(POPULATION) FROM CITY
WHERE (DISTRICT = 'California');
