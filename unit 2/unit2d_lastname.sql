-- =====================================================================
-- Unit 2d — Counting and Summarizing
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2d_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. How many teams are in the database?
SELECT COUNT(*) AS team_count FROM teams;
--30

-- 2. How many players?
SELECT COUNT(*) AS players FROM player_season_stats;
--2945

-- 3. What is the earliest founding year of any team?
SELECT full_name, year_founded
FROM teams
ORDER BY year_founded ASC;
--1946

-- 4. What is the most recent?
SELECT full_name, year_founded
FROM teams
ORDER BY year_founded DESC;
--2002

-- 5. What is the average founding year, rounded to a whole number?
SELECT round(AVG(year_founded)) AS year_founded
FROM teams
--1970

-- 6. What is the total number of points scored across every game in
--    the database?
SELECT total(gp) AS total_points
FROM player_season_stats;
--133,221

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 6 reads 10,842 rows and gives you one number. What is it?
--133,221

-- COUNT(*) counts rows. What does COUNT(birth_year) count instead?
--it counts all the times someone was born that year
-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Aggregate function:
--it uses multiple rows in a dataset to get one final value