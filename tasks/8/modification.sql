UPDATE Repair, Car
SET Repair.Sum_count = Repair.Sum_count - ROUND(Repair.Sum_count * Car.Discount / 100, 0)
WHERE Repair.Car = Car.Identifier;

SELECT Sum_count FROM Repair;
