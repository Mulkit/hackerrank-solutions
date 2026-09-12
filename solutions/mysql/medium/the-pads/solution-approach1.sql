-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Problem     The PADS
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 02:29 p.m.
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
