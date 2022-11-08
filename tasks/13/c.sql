SELECT Garage.Identifier FROM Garage, Car, Repair
WHERE NOT EXISTS -- Если нет - то использованы все детали
    (SELECT Details.Identifier FROM Details -- Все детали у которых
    WHERE Car.ATP_owner = Details.Seller    -- один АТП с машиной.

    EXCEPT -- После вычета два варианта: если таблица пустая, то
           -- в гараже чинили всеми деталями или у автомобиля 
           -- просто нет схожих по АТП деталей или были использованны все.
           -- И второй вариант - остались какие-то неиспользованные детали.

    (SELECT Details.Identifier FROM Details, Repair AS R2 -- Все детали
    WHERE Garage.Identifier = R2.Garage AND -- бывшие в гараже.
    R2.Detail = Details.Identifier

    INTERSECT -- Все детали, которыми чинили в гараже с тем же
              -- АТП, что и у чинившейся машины (отсеиваем детали 
              -- с другим АТП).

    SELECT Details.Identifier FROM Details  -- Все детали у которых
    WHERE Car.ATP_owner = Details.Seller))  -- один АТП с машиной.

AND EXISTS                                  -- Все детали у которых
    (SELECT Details.Identifier FROM Details -- один АТП с машиной. 
    WHERE Car.ATP_owner = Details.Seller)   -- Отсеиваем те машины, у которых
                                            -- нет деталей от того же АТП.
                                

AND Garage.Identifier = Repair.Garage 
AND Car.Identifier = Repair.Car
AND Car.Discount BETWEEN 3 AND 7 -- Просто доп условие
AND MONTH(Repair.Date) < 12; -- Просто доп условие


