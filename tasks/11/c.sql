SELECT Detail FROM Details
WHERE Cost = 
    (SELECT MAX(Cost) FROM Details
    WHERE 
        Identifier = ANY
        (SELECT Detail FROM Repair
        WHERE Car = 
            (SELECT Car FROM Repair
            WHERE Sum_count >= ALL (SELECT Sum_count FROM Repair))));
