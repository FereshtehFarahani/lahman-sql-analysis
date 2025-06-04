# Find players with the highest batting average growth over a 5-year period.

WITH batting_avg AS (
select playerID, yearID, (H * 1.0 / nullif(AB,0)) as batting_avg
from Batting
)
select m.nameFirst, m.nameLast, b1.playerID, b1.yearID as start_year,b2.yearID as end_year, 
round(b1.batting_avg,3) as start_avg, round(b2.batting_avg,3) as end_avg, 
round(b2.batting_avg - b1.batting_avg) as growth
from batting_avg b1
join batting_avg b2
on b1.playerID = b2.playerID and b2.yearID = b1.yearID + 5
join Master m 
on b1.playerID = m.playerID
order by growth DESC
limit 10


















