-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:50 p.m.
-- Technique   inner-join-filter
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query performs an inner join on the matching country code columns to filter city records based on the continent attribute of the associated country.
-- Interview   Before: "How do you retrieve data from two related tables?" After: "I use an INNER JOIN on the foreign key CITY.CountryCode and primary key COUNTRY.Code, then filter by the CONTINENT column. This approach runs in O(N + M) time, where N and M are the row counts of the tables."
-- Pitfalls    (1) Failing to specify the join condition results in a Cartesian product, which significantly degrades performance.  (2) Using an incorrect column name for the join condition will cause a syntax error or return an empty result set.
-- ──────────────────────────────────────────────────

SELECT (CITY.name) 
FROM CITY 
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE 
WHERE COUNTRY.CONTINENT = 'Africa';


