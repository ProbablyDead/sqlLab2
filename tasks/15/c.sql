SELECT Car.Mark, Details.Detail, SUM(Repair.Count) AS Total_count 
FROM Repair, Car, Details
WHERE Repair.Car = Car.Identifier AND Repair.Detail = Details.Identifier
GROUP BY Car.Mark, Details.Detail;

