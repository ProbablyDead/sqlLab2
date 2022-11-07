SELECT Detail FROM Details
WHERE Identifier NOT IN
    (SELECT Identifier FROM Details, Repair
    WHERE Identifier = Repair.Detail AND MONTH(Date) IN
        (SELECT MONTH(Date) AS Month FROM Repair, Details
        WHERE Repair.Detail = Details.Identifier AND Details.Detail = 'Картер'));
