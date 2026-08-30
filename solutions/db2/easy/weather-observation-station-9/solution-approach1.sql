-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- Problem     Weather Observation Station 9
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 10:51 p.m.
-- Technique   negated-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by excluding those starting with any of the five standard vowels using a series of negated pattern matching conditions.
-- Interview   Before: "How do I filter out rows starting with specific characters?" After: "Use the NOT LIKE operator with wildcard patterns for each vowel. This approach runs in O(N) time complexity to scan the table and ensures uniqueness with DISTINCT, effectively handling the requirement to exclude vowel-prefixed names."
-- Pitfalls    (1) Failing to include the DISTINCT keyword results in duplicate city names in the output.  (2) Omitting case-sensitive vowel checks may lead to incorrect results if the database collation is case-sensitive.  (3) Using an incomplete list of vowels fails to satisfy the requirement to exclude all names starting with any vowel.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT distinct city from station
where city not like 'A%'
and city not like 'E%'
and city not like 'I%'
and city not like 'O%'
and city not like 'U%';
