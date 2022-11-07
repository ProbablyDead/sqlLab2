SELECT Garage.Identifier, SUM(Repair.Sum_count) AS Total_sum FROM Garage, Repair
WHERE NOT EXISTS (
        SELECT Car.Identifier FROM Car, Repair
        WHERE Repair.Car = Car.Identifier AND Repair.Garage = Garage.Identifier 
            AND Garage.Location = Car.ATP_owner
        )
    AND Garage.Identifier = Repair.Garage
GROUP BY Garage.Identifier;
