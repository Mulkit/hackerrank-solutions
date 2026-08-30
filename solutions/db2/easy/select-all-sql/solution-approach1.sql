-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
-- Problem     Select All
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:43 p.m.
-- Technique   select-all-wildcard
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves every column and row from the specified table by utilizing the wildcard operator.
-- Interview   Before: "How do I fetch all data from a table?" After: "Use the SELECT * syntax to retrieve all columns for every row in the table, which results in O(N) time complexity where N is the number of rows."
-- Pitfalls    (1) Using the wildcard operator in production environments can lead to unnecessary data transfer if only specific columns are required.  (2) The query assumes the table name CITY exists and is accessible within the current database schema.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT * FROM CITY;
