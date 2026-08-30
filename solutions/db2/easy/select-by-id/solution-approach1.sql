-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
-- Problem     Select By ID
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:43 p.m.
-- Technique   select-where-clause
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the CITY table by matching the ID column against the integer literal 1661.
-- Interview   Before: "How do I retrieve a specific record by its primary key?" After: "Use the SELECT * FROM table WHERE ID = value syntax. This performs an O(N) linear scan unless the ID column is indexed, which would reduce the complexity to O(log N) or O(1)."
-- Pitfalls    (1) Failing to use the correct column name ID as specified in the schema.  (2) Using quotes around the integer 1661 which may cause unnecessary type conversion depending on the database engine.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT * FROM CITY WHERE ID = 1661;
