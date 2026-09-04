-- =====================================================================
-- Unit 2e — Grouping
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2e_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. How many teams are in each state?
SELECT   state, COUNT(*) AS team_count
FROM     teams
GROUP BY state;

-- 2. Same as query 1, but sorted with the most teams first.
SELECT   state, COUNT(*) AS team_count
FROM     teams
GROUP BY state
ORDER BY team_count DESC;

-- 3. Same as query 2, but only show states with more than one team.
SELECT   state, COUNT(*) AS team_count
FROM     teams
GROUP BY state
HAVING   COUNT(*) > 1
ORDER BY team_count DESC;

-- 4. For each season, show the average points scored per game,
--    rounded to one decimal.
SELECT   season, ROUND(AVG(pts), 1) AS ppg
FROM     team_game_stats
GROUP BY season;

-- 5. For each team, count how many games they won. (Wins are
--    wl = 'W'.) Show team_id and the win count.
SELECT team_id, COUNT(WL)
FROM team_game_stats
WHERE (wl = 'W')
GROUP BY team_id

-- 6. Same as query 5, but only teams with more than 200 wins.
SELECT team_id, COUNT(WL)
FROM team_game_stats
WHERE (wl = 'W')
GROUP BY team_id
HAVING COUNT(*) > 200

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Which two states have the most teams, and how many each?
--California with 4 and Texas with 3

-- In query 6 you used both WHERE and HAVING. Explain in your own
-- words what each one filtered.
--Where filters a select statement while Having filters the content within a select statement

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- GROUP BY: how you show the results of the team


-- HAVING: only results that have content within the variable