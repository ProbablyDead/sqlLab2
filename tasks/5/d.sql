SELECT Order_number, MONTHNAME(Date) AS Date, Count FROM Repair 
	WHERE Sum_count > 30000
	ORDER BY Sum_count, Date;

