-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Problem     Weather Observation Station 4
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:44 p.m.
-- Technique   aggregate-difference-query
-- Time        O(N)
-- Space       O(N)
-- Insight     The query calculates the difference between the total count of rows and the count of unique city names by leveraging SQL aggregate functions.
-- Interview   Before: "How would you find the count of duplicate city names?" After: "I would subtract the count of distinct city names from the total count of records, resulting in O(N) time complexity to scan the STATION table."
-- Pitfalls    (1) Failing to account for NULL values in the CITY column, as COUNT(column) ignores NULLs while COUNT(*) includes them.  (2) Misunderstanding that COUNT(DISTINCT CITY) only counts unique non-null values.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT COUNT(*) - COUNT(DISTINCT CITY) FROM STATION;
