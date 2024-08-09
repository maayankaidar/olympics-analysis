SELECT
    Year,
    SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS gold_count,
    SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS silver_count,
    SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze_count,
    SUM(CASE WHEN Medal = 'Gold' OR Medal = 'Silver' OR Medal = 'Bronze' OR Medal = 'No Medal' THEN 1 ELSE 0 END) as total_count
FROM
    dbo.olympics
WHERE
    Year >= 1980 AND YEAR <= 2016
GROUP BY Year