-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Problem     Type of Triangle
-- Difficulty  Easy
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 02:00 p.m.
-- Technique   case-when-conditional-logic
-- Time        O(N)
-- Space       O(1)
-- Insight     The query evaluates triangle validity using the triangle inequality theorem before checking side equality constraints in a specific hierarchical order.
-- Interview   Before: "How would you classify these triangles?" After: "I used a CASE statement to first validate the triangle inequality theorem, ensuring the sum of any two sides exceeds the third, then checked for Equilateral and Isosceles properties in O(N) time."
-- Pitfalls    (1) Failing to check the triangle inequality theorem (A+B <= C) first results in incorrect classifications for invalid inputs.  (2) Ordering the CASE conditions incorrectly, such as checking for Isosceles before Equilateral, causes Equilateral triangles to be mislabeled as Isosceles.
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
