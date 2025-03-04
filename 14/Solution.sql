	SELECT T1.user_id,
	ROUND(SUM(CASE WHEN T2.action='confirmed' THEN 1.00 ELSE 0 END)/COUNT(*),2) AS confirmation_rate
	FROM Signups T1 LEFT JOIN Confirmations T2 ON T1.user_id=T2.user_id
	GROUP BY T1.user_id;