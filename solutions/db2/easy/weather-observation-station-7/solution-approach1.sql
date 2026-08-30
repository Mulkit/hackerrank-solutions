-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- Problem     Weather Observation Station 7
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 09:58 p.m.
-- Technique   distinct-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the final character matches any of the five specified vowels using pattern matching.
-- Interview   Before: "How do I filter strings ending in specific characters?" After: "Use the LIKE operator with the wildcard character % to match suffixes. This approach runs in O(N) time to scan the table and ensures uniqueness with DISTINCT, satisfying the requirement to exclude duplicates."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Using incorrect wildcard placement like 'a%' instead of '%a' would match prefixes instead of suffixes.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT  DISTINCT (CITY) FROM STATION
WHERE CITY LIKE '%a' 
OR CITY LIKE '%e' 
OR CITY LIKE '%i' 
OR CITY LIKE '%o' 
OR CITY LIKE '%u'; 
