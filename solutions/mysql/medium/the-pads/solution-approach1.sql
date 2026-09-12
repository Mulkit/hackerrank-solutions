-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Problem     The PADS
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 02:29 p.m.
-- Technique   string-concatenation-and-aggregation
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The solution utilizes string concatenation and aggregation functions to format output while relying on standard SQL sorting clauses to satisfy alphabetical and numerical ordering requirements.
-- Interview   Before: "How would you format and aggregate data from a single table?" After: "I would use CONCAT and LEFT for string manipulation, and GROUP BY with COUNT for aggregation. The time complexity is O(N log N) due to the sorting requirements for both the names and the occupation counts."
-- Pitfalls    (1) Failing to include the 's' suffix in the second query as required by the output format.  (2) Incorrectly sorting the second query by failing to order by both count and occupation name alphabetically.  (3) Using incorrect string functions like SUBSTRING instead of LEFT for extracting the first character of the occupation.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT CONCAT(NAME,'(', LEFT(OCCUPATION,1),')') 
FROM OCCUPATIONS 
ORDER by NAME;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', lower (OCCUPATION), 's.' ) 
from OCCUPATIONS 
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;
