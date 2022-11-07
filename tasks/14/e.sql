SELECT DISTINCT Car.Mark FROM Car, Repair, Garage
WHERE Repair.Car = Car.Identifier AND Repair.Garage = Garage.Identifier 
	AND Garage.Location IN ('АТП1', 'АТП2')
	AND Car.Discount = (SELECT MAX(Car.Discount) FROM Car);
