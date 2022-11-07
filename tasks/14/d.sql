SELECT AVG(Garage.Commission) AS Averange FROM Garage
WHERE NOT EXISTS (
        SELECT Car.Identifier FROM Car, Repair
        WHERE Repair.Car = Car.Identifier AND Repair.Garage = Garage.Identifier AND Garage.Location = Car.ATP_owner
        );
