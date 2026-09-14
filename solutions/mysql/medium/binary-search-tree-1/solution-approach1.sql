-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- Problem     Binary Tree Nodes
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-14, 10:03 p.m.
-- Technique   case-when-subquery-membership
-- Time        O(N^2)
-- Space       O(N)
-- Insight     The query classifies nodes by checking if the parent is null for the root, if the node exists in the parent column for inner nodes, or otherwise as a leaf.
-- Interview   Before: "How would you categorize nodes in a tree structure using SQL?" After: "I use a CASE statement to identify the root by a NULL parent, then check for existence in the parent column to distinguish inner nodes from leaves, resulting in O(N^2) time complexity due to the subquery."
-- Pitfalls    (1) Failing to handle the NULL parent case first will cause incorrect classification of the root node.  (2) Using a subquery inside the CASE statement results in O(N^2) complexity, which may be inefficient for very large datasets.
-- ──────────────────────────────────────────────────

SELECT N,
    CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;
