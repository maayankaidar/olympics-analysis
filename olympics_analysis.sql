WITH medal_counts AS(
SELECT
    Year,
    SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS gold_count,
    SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS silver_count,
    SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze_count,
    SUM(CASE WHEN Medal = 'No Medal' THEN 1 ELSE 0 END) AS no_medal_count,
    SUM(CASE WHEN Medal = 'Gold' OR Medal = 'Silver' OR Medal = 'Bronze' OR Medal = 'No Medal' THEN 1 ELSE 0 END) as total_count
FROM
    dbo.olympics
GROUP BY Year
)
SELECT
    Year,
    (CAST(gold_count AS FLOAT) / total_count) * 100 AS gold_perc,
    (CAST(silver_count AS FLOAT) / total_count) * 100 AS silver_perc,
    (CAST(bronze_count AS FLOAT) / total_count) * 100 AS bronze_perc,
    (CAST(no_medal_count AS FLOAT) / total_count) * 100 AS no_medal_perc
FROM
    medal_counts
WHERE
    Year >= 1980 AND YEAR <= 2016