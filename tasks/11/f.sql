SELECT Order_number, Car.Mark, MONTHNAME(Date) FROM Car, Repair, Garage
WHERE Car.Identifier = Repair.Car AND Garage.Identifier = Repair.Garage AND
    Location = ALL (SELECT Location FROM Garage WHERE Location = 'АТП1');
