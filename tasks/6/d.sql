SELECT MONTHNAME(Repair.Date) AS Month, Garage.Number, Details.Detail,Repair.Count
FROM Repair INNER JOIN Garage
	ON Repair.Garage = Garage.Identifier
        INNER JOIN Details
	ON Repair.Detail = Details.Identifier;
