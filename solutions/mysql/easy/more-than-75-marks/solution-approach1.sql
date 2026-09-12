-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-12, 01:16 p.m.
-- Technique   conditional-filtering-multi-column-sort
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters records by a numeric threshold and applies a lexicographical sort on the suffix of the name, using the ID as a tie-breaker.
-- Interview   Before: "How would you filter and sort this table?" After: "I would use a WHERE clause for the marks threshold and an ORDER BY clause with the RIGHT function for the suffix, followed by the ID for tie-breaking, resulting in O(N log N) time complexity."
-- Pitfalls    (1) Using LEFT instead of RIGHT for the suffix sorting requirement.  (2) Omitting the secondary ID sort, which causes non-deterministic ordering for identical name suffixes.  (3) Incorrectly using >= 75 instead of the strictly greater than 75 condition specified.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME,3), ID ASC;

