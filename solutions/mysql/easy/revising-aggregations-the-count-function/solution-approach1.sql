-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Count Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:01 p.m.
-- Technique   aggregate-count-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters rows based on a population threshold before applying the count aggregate function to the remaining result set.
-- Interview   Before: "I would select all columns and filter in application code." After: "Using COUNT with a WHERE clause is more efficient, achieving O(N) time complexity by processing the filter directly within the database engine to return only the final integer count."
-- Pitfalls    (1) Using COUNT(column_name) instead of COUNT(*) may exclude rows where the specified column contains a NULL value.  (2) Misinterpreting the threshold as inclusive by using >= instead of the strictly greater than operator required by the problem statement.
-- ──────────────────────────────────────────────────

SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;


