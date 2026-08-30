-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-- Problem     Revising the Select Query II
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:42 p.m.
-- Technique   conditional-select-projection
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters the CITY table by applying a conjunctive predicate on the population and country code columns before projecting the name attribute.
-- Interview   Before: "How would you retrieve specific city names based on multiple criteria?" After: "I use a SELECT statement with a WHERE clause combining population and country code filters. This runs in O(N) time, where N is the number of rows in the table, ensuring we only return records matching the USA criteria."
-- Pitfalls    (1) Failing to use the exact string literal 'USA' for the CountryCode column.  (2) Using an incorrect comparison operator for the population threshold instead of the required greater than 120000.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';
