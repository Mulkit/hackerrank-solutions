-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:27 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/


SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, '0',''))) FROM EMPLOYEES;
