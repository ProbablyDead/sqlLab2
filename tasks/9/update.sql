ALTER TABLE Repair ADD COLUMN Commission INT UNSIGNED;

UPDATE Repair, Garage 
SET Repair.Commission = Repair.Sum_count * Garage.Commission / 100
WHERE Repair.Garage = Garage.Identifier;

SELECT Order_number, Car, MONTHNAME(Date) AS Month,
Garage, Detail, Count, Sum_count, Commission FROM Repair;
