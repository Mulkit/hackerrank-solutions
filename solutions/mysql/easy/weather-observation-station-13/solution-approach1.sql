-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Problem     Weather Observation Station 13
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:47 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE 38.7880 < LAT_N AND LAT_N < 137.2345;

