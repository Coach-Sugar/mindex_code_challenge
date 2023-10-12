SELECT Sum(tj."Yards_Boyd") AS "Boyd Yards"
	,Sum(tj."Yards_Higgins") AS "Higgins Yards"
	,Sum(tj."Yards_Chase") AS "Chase Yards"
	,sum(CASE WHEN tj."Result" = 'Win' THEN 1 ELSE 0 END) || '-' || sum(CASE WHEN tj."Result" = 'Loss' THEN 1 ELSE 0 END) AS "Win/Loss"
FROM tyler_jennings tj;