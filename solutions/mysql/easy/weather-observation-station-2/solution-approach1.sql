-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Problem     Weather Observation Station 2
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 03:42 p.m.
-- Technique   aggregate-sum-rounding
-- Time        O(N)
-- Space       O(1)
-- Insight     The query computes the sum of all entries in the specified columns and applies rounding to two decimal places as a final transformation step.
-- Interview   Before: "How would you calculate the total latitude and longitude?" After: "I would use the SUM aggregate function on both columns and apply the ROUND function to ensure two decimal places, resulting in O(N) time complexity where N is the number of rows in the STATION table."
-- Pitfalls    (1) Failing to apply the ROUND function to the SUM result, which violates the requirement for a scale of 2 decimal places.  (2) Incorrectly assuming the output requires separate rows instead of a single row with two columns as specified in the output format.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/


SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2) FROM STATION;
