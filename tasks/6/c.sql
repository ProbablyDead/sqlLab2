SELECT Repair.Order_number, Car.Mark, MONTHNAME(Repair.Date) AS Month, Repair.Sum_count 
FROM Repair INNER JOIN Car
    ON Repair.Car = Car.Identifier
ORDER BY Repair.Sum_count;
