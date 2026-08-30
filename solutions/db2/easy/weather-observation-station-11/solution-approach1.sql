-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Problem     Weather Observation Station 11
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 11:39 p.m.
-- Technique   regex-alternative-string-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the first or last character is absent from the set of vowels using logical disjunction.
-- Interview   Before: "How would you filter strings based on multiple character conditions?" After: "I used a logical OR to identify cities where either the start or end character is not a vowel, ensuring O(N) time complexity while handling duplicates with DISTINCT."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Neglecting the UPPER function causes the query to miss lowercase vowels, leading to incorrect filtering.  (3) Using AND instead of OR incorrectly restricts the result to cities that satisfy both conditions simultaneously.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/


SELECT DISTINCT CITY
FROM STATION
WHERE UPPER(SUBSTR(TRIM(CITY), 1, 1)) NOT IN ('A','E','I','O','U')
   OR UPPER(SUBSTR(TRIM(CITY), LENGTH(TRIM(CITY)), 1)) NOT IN ('A','E','I','O','U');
