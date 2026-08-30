-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
-- Problem     Japanese Cities' Attributes
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:43 p.m.
-- Technique   select-star-where-clause
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves all columns for rows matching the specific country code filter.
-- Interview   Before: "How do I filter rows in SQL?" After: "Use the WHERE clause to restrict results to the 'JPN' country code. This operation runs in O(N) time as it performs a full table scan to identify all matching records."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'JPN' will cause a syntax error.  (2) Assuming the table contains columns other than those defined in the schema may lead to unexpected output.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';
