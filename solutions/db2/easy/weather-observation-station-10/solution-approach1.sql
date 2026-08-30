-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- Problem     Weather Observation Station 10
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 10:52 p.m.
-- Technique   distinct-negated-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by excluding those ending in any of the five standard vowels using a series of negated pattern matching conditions.
-- Interview   Before: "How do I filter strings based on their suffix in SQL?" After: "Use the NOT LIKE operator with wildcard patterns. This approach runs in O(N) time complexity, where N is the number of rows, ensuring unique results via the DISTINCT keyword."
-- Pitfalls    (1) Failing to include the DISTINCT keyword results in duplicate city names, violating the problem requirement.  (2) Neglecting to check all five vowels (a, e, i, o, u) leads to incomplete filtering of the result set.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT distinct city from station
where city not like '%a'
and city not like '%e'
and city not like '%i'
and city not like '%o'
and city not like '%u';
