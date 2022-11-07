SELECT Detail FROM Details 
WHERE Max_count = (SELECT MAX(Max_count) FROM Details);
