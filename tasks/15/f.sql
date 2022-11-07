SELECT Car.Mark, MAX(Repair.Sum_Count) AS Max_Cost FROM Car, Garage, Repair
WHERE Repair.Garage = Garage.Identifier AND Repair.Car = Car.Identifier 
	AND Garage.Location = 'АТП2'
GROUP BY Car.Mark
HAVING Max_Cost < 70000;
