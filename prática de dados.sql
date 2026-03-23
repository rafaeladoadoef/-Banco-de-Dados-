
-- create
CREATE TABLE Aphelios (
  id INT PRIMARY KEY,
  CPF char(14) NOT NULL,
  name varchar(245) NOT NULL,
  aniversario DATE NOT NULL,
  email varchar(70)NOT NULL
);

-- insert
INSERT INTO Aphelios VALUES (01, '125.356.362-42', 'Alune', '2019/12/29' , 'fullmoon@gmail.com');
INSERT INTO Aphelios VALUES (02, '943.424.234-43', 'Kiryu Kazuma', '1973/04/12' , 'dojimadragon@gmail.com');
INSERT INTO Aphelios VALUES (03, '143.634.043-32', 'Yu Narukami', '1998/04/12', 'narukami@gmail.com' );
INSERT INTO Aphelios VALUES (04, '943.234.212-75', 'Leon Kennedy', '1973/11/19' , 'scottkennedy@gmail.com');
INSERT INTO Aphelios VALUES (05, '032.934.853-94', 'Lampião', '1897/07/12' , 'lampiaocangaceiro@hotmail.com');
INSERT INTO Aphelios VALUES (06, '945.346.092-56', 'Satoru Gojo', '1997/02/23', 'omaisforte@gmail.com');
INSERT INTO Aphelios VALUES (07, '424.145.943-52', 'Getúlio Vargas', '1892/12/04', 'vargaspr3sidente@gmail.com' );
INSERT INTO Aphelios VALUES (08, '942.963.023-23', 'Meowth', '1993/12/06', 'gacoruja@gmail.com');
-- fetch 
SELECT * FROM Aphelios;

-- CREATE
CREATE TABLE Endereco (
id INT,
user_id INT,
pais varchar(70),
PRIMARY KEY (id),
foreign KEY (user_id) references Aphelios(id)
);

-- insert 
INSERT INTO Endereco VALUES(01,01, 'Targon');
INSERT INTO Endereco VALUES(02,02, 'Japão');
INSERT INTO Endereco VALUES(03,03, 'Japão');
INSERT INTO Endereco VALUES(04,04, 'Estados Unidos');
INSERT INTO Endereco VALUES(05,05, 'Brasil');
INSERT INTO Endereco VALUES(06,06, 'Japão');
INSERT INTO Endereco VALUES(07,07, 'Brasil');
INSERT INTO Endereco VALUES (08,08, 'Japão');

-- fetch
SELECT * FROM Endereco;

