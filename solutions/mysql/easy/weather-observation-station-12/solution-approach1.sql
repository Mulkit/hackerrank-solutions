-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Problem     Weather Observation Station 12
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-10, 11:51 p.m.
-- Technique   regex-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by applying negative regex lookups to ensure neither the first nor the last character belongs to the set of vowels.
-- Interview   Before: "How would you filter strings based on multiple character constraints?" After: "I use regex anchors to enforce that the first and last characters are not vowels, ensuring O(N) time complexity while handling duplicates with DISTINCT."
-- Pitfalls    (1) Failing to account for case sensitivity if the database collation is case-sensitive.  (2) Forgetting the DISTINCT keyword, which leads to duplicate city names in the output.  (3) Incorrectly using regex anchors, such as omitting the start or end markers, which would match vowels anywhere in the string.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

-- SELECT DISTINCT CITY FROM STATION WHERE (CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%') AND (CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u');

SELECT DISTINCT CITY FROM STATION WHERE (CITY NOT REGEXP '^[aeiou]') AND (CITY NOT REGEXP '[aeiou]$');
