SELECT * FROM Car;

SELECT * FROM Garage;

SELECT * FROM Details;

SELECT Order_number, Car, MONTHNAME(Date) AS Month ,Garage, Details, Count, Sum_count FROM Repair;


