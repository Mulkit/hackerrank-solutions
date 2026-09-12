-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 05:54 p.m.
-- Technique   inner-join-group-by-aggregation
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query joins the CITY and COUNTRY tables on their shared country code key and calculates the floor of the average population grouped by continent.
-- Interview   Before: "How would you calculate the average population per continent?" After: "I would perform an INNER JOIN on the country code, group by the continent column, and apply the FLOOR function to the AVG aggregate, resulting in O(N + M) time complexity where N and M are the table sizes."
-- Pitfalls    (1) Using ROUND instead of FLOOR, which violates the requirement to round down to the nearest integer.  (2) Failing to join on the correct matching key columns, which results in an incorrect mapping of cities to continents.  (3) Grouping by the wrong column, which prevents the aggregation from correctly partitioning data by continent.
-- ──────────────────────────────────────────────────

SELECT (COUNTRY.CONTINENT), FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT; 
