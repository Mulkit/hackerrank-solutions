-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Sum Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:04 p.m.
-- Technique   aggregate-sum-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters rows by the District column before applying the SUM aggregate function to the Population column.
-- Interview   Before: "How would you calculate the total population for a specific district?" After: "I would use the SUM aggregate function combined with a WHERE clause to filter by district, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the WHERE clause results in summing the population of all cities in the entire table.  (2) Misspelling the district name 'California' will return a null or zero result depending on the database engine.
-- ──────────────────────────────────────────────────

SELECT SUM(Population) FROM CITY
WHERE (DISTRICT = 'California');
