# Lahman SQL Analysis

This project explores SQL queries on the Lahman 2016 Baseball Database.  
The goal is to practice advanced SQL topics like joins, aggregation, and window functions.

## Query: Batting Average Growth Over 5 Years

This query identifies players with the greatest improvement in batting average over a 5-year period.

### Query Highlights
- Uses a CTE to calculate batting averages
- Joins data 5 years apart
- Calculates and ranks growth
- Uses `NULLIF` to avoid division by zero

See the full query in: [`queries/batting_avg_growth_5_years.sql`](queries/batting_avg_growth_5_years.sql)
