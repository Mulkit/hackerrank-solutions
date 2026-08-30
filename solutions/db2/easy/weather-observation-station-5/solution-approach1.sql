-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-08-30, 10:45 p.m.
-- Technique   order-by-length-and-lexicographical
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The solution retrieves the extreme city names by sorting the entire dataset by length and then by alphabetical order, selecting the top record for each extreme.
-- Interview   Before: "How would you find the shortest and longest city names with tie-breaking rules?" After: "I used two separate queries with ORDER BY length and city name to handle the tie-breaking requirement, resulting in O(N log N) time complexity due to the sorting operations."
-- Pitfalls    (1) Failing to include the city name in the ORDER BY clause causes incorrect tie-breaking when multiple cities share the same minimum or maximum length.  (2) Using DESC for the city name in the second query violates the requirement to choose the alphabetically first city in case of ties.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT city, length(city)
from station
order by length(city) asc, city ASC
limit 1;

SELECT city, length(city)
from station
order by length(city) desc, city ASC
limit 1;
