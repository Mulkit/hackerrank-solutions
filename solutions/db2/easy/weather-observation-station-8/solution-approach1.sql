-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- Problem     Weather Observation Station 8
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 10:20 p.m.
-- Technique   regex-like-string-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters city names by checking if the first and last characters belong to the set of vowels using case-insensitive string functions and ensures uniqueness via the DISTINCT keyword.
-- Interview   Before: "How would you filter strings based on specific character positions?" After: "I use LEFT and RIGHT functions combined with an IN clause to validate boundary characters. This approach runs in O(N) time, where N is the number of rows, and effectively handles the requirement for unique results using DISTINCT."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names if multiple stations share the same name.  (2) Neglecting the LOWER function causes the query to miss city names starting or ending with uppercase vowels.  (3) Assuming the database is case-insensitive by default can lead to incorrect filtering if the collation is case-sensitive.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');
