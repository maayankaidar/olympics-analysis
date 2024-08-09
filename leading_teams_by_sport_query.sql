SELECT TOP 10
    Team,
    SUM(CASE WHEN (Medal = 'Gold' AND Sport = 'Swimming') THEN 1 ELSE 0 END) AS swim_winners
    ,SUM(CASE WHEN (Medal = 'Gold' AND Sport = 'Gymnastics') THEN 1 ELSE 0 END) AS gym_winners
    ,SUM(CASE WHEN (Medal = 'Gold' AND Sport = 'Judo') THEN 1 ELSE 0 END) AS judo_winners
FROM
    dbo.olympics
GROUP BY Team
ORDER BY swim_winners DESC