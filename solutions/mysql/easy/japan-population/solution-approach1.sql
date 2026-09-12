-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:10 p.m.
-- ──────────────────────────────────────────────────

SELECT SUM(POPULATION) FROM CITY
WHERE (COUNTRYCODE = 'JPN');
