ALTER TABLE Repair ADD COLUMN Commission TINYINT UNSIGNED CHECK (Commission <= 100); 

UPDATE Repair, Garage 
SET Repair.Commission = Garage.Commission
WHERE Repair.Garage = Garage.Identifier;

SELECT Order_number, Car, MONTHNAME(Date) AS Month,
Garage, Detail, Count, Sum_count, Commission FROM Repair;
