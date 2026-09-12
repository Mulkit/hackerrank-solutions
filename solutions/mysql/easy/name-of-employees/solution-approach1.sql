-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
-- Problem     Employee Names
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 01:19 p.m.
-- Technique   simple-select-order-by
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query retrieves the name column from the Employee table and sorts the resulting set in ascending lexicographical order.
-- Interview   Before: "How would you list all employee names alphabetically?" After: "I would use the SELECT statement with an ORDER BY clause on the name column, which results in O(N log N) time complexity due to the sorting requirement."
-- Pitfalls    (1) Failing to specify the ASC keyword, although it is the default, can lead to confusion regarding sort direction.  (2) Assuming the database collation is case-insensitive when it might be case-sensitive, affecting the alphabetical order of names.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;
