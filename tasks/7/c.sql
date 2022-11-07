SELECT Repair.Order_number, Car.Mark, MONTHNAME(Repair.Date) AS Month
FROM Repair INNER JOIN Car
    ON Repair.Car = Car.Identifier 
        INNER JOIN Garage
    ON Repair.Garage = Garage.Identifier
WHERE Garage.Location = 'АТП1';
