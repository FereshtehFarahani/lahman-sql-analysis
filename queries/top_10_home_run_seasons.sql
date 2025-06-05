#Find the top 10 players with the highest number of home runs in a single season.

SELECT b.playerID, b.yearID,m.nameFirst, m.nameLast, sum(b.HR) as home_runs
FROM lahman2016.Batting b 
join Master m on b.playerID = m.playerID
group by b.playerID, b.yearID, m.nameFirst, m.nameLast
order by home_runs desc
limit 10
;

