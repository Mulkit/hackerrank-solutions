-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:38 p.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns from the CITY table by applying a conjunctive filter on the POPULATION and COUNTRYCODE attributes.
-- Interview   Before: "How would you filter rows based on multiple criteria?" After: "I use the WHERE clause with AND to enforce both conditions, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the correct string literal format for the CountryCode 'USA' causes a syntax error.  (2) Using an incorrect comparison operator for the population threshold violates the requirement for populations strictly larger than 100000.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT * FROM CITY WHERE POPULATION >100000 AND COUNTRYCODE = 'USA';
