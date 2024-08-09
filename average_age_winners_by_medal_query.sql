SELECT
    AVG(CASE WHEN Medal = 'Gold' THEN Age ELSE NULL END) AS average_age_gold_winners,
    AVG(CASE WHEN Medal = 'Silver' THEN Age ELSE NULL END) AS average_age_silver_winners,
    AVG(CASE WHEN Medal = 'Bronze' THEN Age ELSE NULL END) AS average_age_bronze_winners,
    AVG(CASE WHEN Medal = 'No Medal' THEN Age ELSE NULL END) AS average_age_no_medal,
    AVG(age) as average_general_age,
    MAX(age),
    MIN(age)
FROM
    dbo.olympics