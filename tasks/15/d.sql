SELECT Details.Detail, COUNT(DISTINCT Car.Mark) AS Count FROM Car, Repair, Details
WHERE Repair.Car = Car.Identifier AND Repair.Detail = Details.Identifier AND Car.Discount > 3
GROUP BY Details.Detail;
