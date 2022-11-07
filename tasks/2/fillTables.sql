INSERT INTO Car (Mark, ATP_owner, Discount) VALUES 
('Газ-24', 'АТП1', '4'),
('Газ-52', 'АТП1', '0'),
('Зил-130', 'АТП3', '3'),
('Зил-133', 'АТП4', '5'),
('Газ-1222', 'АТП5', '4');

INSERT INTO Garage (Number, Location, Commission) VALUES
('N1', 'АТП1', '3'),
('N2', 'АТП1', '3'),
('N1', 'АТП2', '4'),
('N3', 'АТП2', '4'),
('N4', 'АТП4', '4'),
('N5', 'АТП5', '3');

INSERT INTO Details (Detail, Seller, Cost, Max_count) VALUES 
('Трубка', 'АТП1', '10000', '100'), 
('Скоба', 'АТП1', '5000', '230'), 
('Картер', 'АТП3', '40000',	'70'), 
('Штуцер', 'АТП2', '7000', '200'), 
('Прокладка', 'АТП2', '5000', '1200'), 
('Пробка', 'АТП1', '5000', '300'),
('Толкатель', 'АТП1', '11000', '120');

INSERT INTO Repair (Car, Date, Garage, Detail, Count, Sum_count) VALUES 
('004', '2022-01-01', '003', '007', '7', '77000'),
('003',	'2022-02-01', '003', '002', '4', '20000'),
('003',	'2022-02-01', '005', '004', '1', '7000'),
('003', '2022-03-01', '006', '005', '6', '30000'),
('002', '2022-04-01', '006', '007', '9', '99000'),
('004', '2022-04-01', '006', '006','8', '40000'),
('001', '2022-05-01', '005', '007','3', '33000'),
('001', '2022-05-01', '003', '003', '2', '80000'),
('003', '2022-05-01', '006', '001', '16', '160000'),
('003', '2022-05-01', '005', '005', '21', '105000'),
('002', '2022-06-01', '001', '001', '5', '50000'),
('005', '2022-06-01', '006', '002', '3', '15000'),
('003', '2022-08-01', '002', '006', '6', '30000'),
('004', '2022-08-01', '005', '001', '4', '40000'),
('004', '2022-08-01', '001', '007', '7', '77000'),
('005', '2022-08-01', '001', '006', '1', '5000'),
('002', '2022-08-01', '004', '002', '1', '5000');

