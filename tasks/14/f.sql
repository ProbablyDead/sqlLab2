SELECT COUNT(DISTINCT Car.Mark) AS Count FROM Car, Garage, Repair
WHERE Repair.Car = Car.Identifier AND Repair.Garage = Garage.Identifier 
	AND MONTH(Repair.Date) BETWEEN 6 AND 8 AND Garage.Location = 'АТП1';
