-- Find each player's batting average per year and their career average as a window function.

SELECT 
  playerID,
  yearID,
  ROUND(H * 1.0 / NULLIF(AB, 0), 3) AS avg_year,
  ROUND(
    SUM(H) OVER (PARTITION BY playerID) * 1.0 / 
    NULLIF(SUM(AB) OVER (PARTITION BY playerID), 0), 
  3) AS avg_career
FROM lahman2016.Batting
WHERE AB > 0
ORDER BY playerID, yearID;

