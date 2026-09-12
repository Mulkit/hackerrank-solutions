-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:47 p.m.
-- Technique   inner-join-aggregation
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query performs an inner join on matching country codes followed by a conditional aggregation of the population column for all rows where the continent is Asia.
-- Interview   Before: "How would you calculate the total population of a specific continent across two related tables?" After: "I would use an INNER JOIN on the shared country code column and apply a SUM aggregate with a WHERE filter, resulting in O(N+M) time complexity where N and M are the table sizes."
-- Pitfalls    (1) Failing to join the tables on the correct matching key columns CITY.CountryCode and COUNTRY.Code.  (2) Incorrectly filtering by the continent name due to case sensitivity in the string literal 'Asia'.
-- ──────────────────────────────────────────────────


SELECT SUM(CITY.POPULATION) 
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
where   COUNTRY.CONTINENT = 'Asia'; 
