-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Problem     Weather Observation Station 6
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 09:39 p.m.
-- Technique   pattern-matching-distinct-filter
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the first character matches any vowel using the SQL LIKE operator with wildcard patterns.
-- Interview   Before: "How would you extract unique cities starting with specific characters?" After: "I used the DISTINCT keyword to remove duplicates and the LIKE operator with wildcard patterns to identify vowels, resulting in O(N) time complexity to scan the table."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names in the output.  (2) Omitting the wildcard character in the LIKE pattern causes the query to match only single-character city names.  (3) Case sensitivity in some SQL dialects might require explicit handling if the data contains lowercase vowels.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT  DISTINCT (CITY) FROM STATION
WHERE CITY LIKE 'A%' 
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%'; 
