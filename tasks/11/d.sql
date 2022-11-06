SELECT Mark, Discount FROM Car
WHERE ATP_owner = 'АТП1' AND 
Discount <= ALL (SELECT Discount FROM Car);
