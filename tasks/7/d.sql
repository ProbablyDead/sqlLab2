SELECT Car.ATP_owner, Garage.Number, MONTHNAME(Repair.Date) AS Month
FROM Repair INNER JOIN Car
    ON Repair.Car = Car.Identifier
        INNER JOIN Garage
    ON Repair.Garage = Garage.Identifier
WHERE Car.Discount > 3 AND Repair.Date >= 2022-01-01
ORDER BY Repair.Date;
