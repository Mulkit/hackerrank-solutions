-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 09:18 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
here we use |a-c|+|b-d|
*/
SELECT ROUND(abs(MIN(LAT_N) - max(LAT_N)) + abs(MIN(LONG_W) - max(LONG_W)) , 4) from station;




