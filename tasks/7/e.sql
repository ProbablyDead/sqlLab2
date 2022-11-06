SELECT Car.Mark 
FROM Repair INNER JOIN Details
	ON Repair.Detail = Details.Identifier
			INNER JOIN Garage
	ON Repair.Garage = Garage.Identifier
			INNER JOIN Car
	ON Repair.Car = Car.Identifier
WHERE Details.Detail = 'Толкатель' AND NOT Garage.Number = 'N1';
