SELECT Number FROM Garage	
WHERE NOT EXISTS
	(
	SELECT DISTINCT Car.Identifier FROM Car
	WHERE 
		EXISTS 
			(SELECT * FROM Repair, Details
			WHERE Repair.Car = Car.Identifier AND Repair.Detail = Details.Identifier 
				AND Details.Detail = 'Прокладка')
	 
	INTERSECT

	SELECT DISTINCT Repair.Car FROM Repair
	WHERE Repair.Garage = Garage.Identifier 
	);

