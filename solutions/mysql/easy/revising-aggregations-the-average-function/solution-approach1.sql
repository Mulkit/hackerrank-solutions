-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - Averages
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:06 p.m.
-- ──────────────────────────────────────────────────

SELECT AVG(POPULATION) FROM CITY
WHERE (DISTRICT = 'California');
