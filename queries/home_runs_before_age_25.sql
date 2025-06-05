-- Top 10 players with the most home runs before age 25

SELECT b.PlayerID, m.nameFirst, m.nameLast, sum(b.HR) as Total_home_runs
FROM lahman2016.Batting b
join lahman2016.Master m on b.playerID = m.playerID
where (b.yearID - m.birthYear) < 25
group by b.PlayerID, m.nameFirst, m.nameLast
order by Total_home_runs desc
limit 10;




