SELECT Detail FROM Details
WHERE NOT EXISTS (
    SELECT DISTINCT * FROM Repair
    WHERE Details.Identifier = Repair.Detail AND Repair.Count < 2
);

	
