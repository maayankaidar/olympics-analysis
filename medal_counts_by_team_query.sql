SELECT TOP 10     
	Team,
    SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS gold_count,
    SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS silver_count,
    SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze_count
FROM
    dbo.olympics
WHERE
    Medal = 'Gold' OR
    Medal = 'Silver' OR
    Medal = 'Bronze'
GROUP BY
    Team
ORDER BY
    gold_count DESC,
    silver_count DESC,
    bronze_count DESC