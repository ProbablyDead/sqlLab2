SELECT Details.Detail, Repair.Count
FROM Repair INNER JOIN Car
    ON Repair.Car = Car.Identifier
        INNER JOIN Garage
    ON Repair.Garage = Garage.Identifier
        INNER JOIN Details
    ON Repair.Detail = Details.Identifier
WHERE Car.Mark = 'Зил-130' AND Garage.Location IN ('АТП2', 'АТП4');
