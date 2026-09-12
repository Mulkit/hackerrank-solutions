-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
-- Problem     Population Density Difference
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:11 p.m.
-- ──────────────────────────────────────────────────

SELECT MAX(POPULATION) - MIN(POPULATION) from CITY;
