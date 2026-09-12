-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Problem     Type of Triangle
-- Difficulty  Easy
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 02:00 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/




SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END 
FROM TRIANGLES;
