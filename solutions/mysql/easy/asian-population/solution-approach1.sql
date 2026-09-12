-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:47 p.m.
-- ──────────────────────────────────────────────────


SELECT SUM(CITY.POPULATION) 
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
where   COUNTRY.CONTINENT = 'Asia'; 
