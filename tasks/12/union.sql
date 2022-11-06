SELECT Location, ATP_owner FROM Repair, Garage, Car
WHERE Repair.Car = Car.Identifier AND 
	Repair.Garage = Garage.Identifier

UNION ALL 

SELECT NULL, NULL WHERE NULL;

