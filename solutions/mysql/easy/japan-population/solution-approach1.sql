-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:10 p.m.
-- Technique   aggregate-sum-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the CITY table by the COUNTRYCODE constant 'JPN' and computes the sum of the POPULATION column for all matching rows.
-- Interview   Before: "How would you calculate the total population of a specific country from a database table?" After: "I would use the SUM aggregate function combined with a WHERE clause to filter by the country code, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the exact string literal 'JPN' as specified in the problem requirements.  (2) Applying the SUM function without a WHERE clause, which would calculate the total population for all countries instead of just Japan.
-- ──────────────────────────────────────────────────

SELECT SUM(POPULATION) FROM CITY
WHERE (COUNTRYCODE = 'JPN');
