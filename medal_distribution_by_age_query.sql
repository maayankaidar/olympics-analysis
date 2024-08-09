SELECT
    Age,
    SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS gold_count,
    SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS silver_count,
    SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze_count,
    SUM(CASE WHEN Medal = 'No Medal' THEN 1 ELSE 0 END) as no_medal_count
FROM
    dbo.olympics
WHERE (Age >= 19 AND Age <= 32)
GROUP BY Age