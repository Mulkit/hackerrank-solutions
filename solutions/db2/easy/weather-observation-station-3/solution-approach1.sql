-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- Problem     Weather Observation Station 3
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 05:43 p.m.
-- Technique   distinct-modulo-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves unique city names by applying a modulo operator to the ID column and filtering for even values.
-- Interview   Before: "How do I filter rows based on parity and remove duplicates?" After: "Use the DISTINCT keyword to eliminate duplicates and the MOD function to isolate even IDs, resulting in O(N) time complexity where N is the number of rows in the STATION table."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names appearing in the output.  (2) Using an incorrect modulo divisor or operator syntax will cause a syntax error or incorrect row filtering.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2) = 0;
