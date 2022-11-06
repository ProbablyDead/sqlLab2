SELECT Detail FROM Details
WHERE EXISTS (
	SELECT DISTINCT Garage.Identifier FROM Garage
	WHERE Details.Seller = Garage.Location
	
	INTERSECT

	SELECT DISTINCT Garage.Identifier FROM Garage, Repair
	WHERE Repair.Garage = Garage.Identifier AND Repair.Detail = Details.Identifier
);


