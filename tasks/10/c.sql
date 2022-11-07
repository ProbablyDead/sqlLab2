SELECT Garage.Identifier FROM Garage
	WHERE Garage.Identifier IN ( 
		SELECT Garage.Identifier 
		FROM Repair INNER JOIN Details
			ON Repair.Detail = Details.Identifier
					INNER JOIN Car 
			ON Repair.Car = Car.Identifier
			        INNER JOIN Garage 
			ON Repair.Garage = Garage.Identifier
		WHERE Car.ATP_owner = 'АТП3' AND Details.Detail = 'Толкатель'
	);
