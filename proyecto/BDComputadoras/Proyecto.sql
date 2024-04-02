CREATE TABLE Computadora (
id INT PRIMARY KEY not null,
marca VARCHAR(50) not null,
modelo VARCHAR(20) not null,
precio NUMBER not null
);

CREATE TABLE Componente (
id INT PRIMARY KEY,
nombre VARCHAR(20) not null,
precio NUMBER not null
);


CREATE TABLE Especificaciones (
computadora_id INT not null,
componente_id int not null,
FOREIGN KEY (computadora_id) REFERENCES Computadora(id),
FOREIGN KEY (componente_id) REFERENCES Componente(id)
);

CREATE TABLE Distribuidor (
cedula INT PRIMARY KEY,
nombre VARCHAR(20) not null,
numero NUMBER not null
);

CREATE TABLE Computadora_Comprada (
cedula_distribuidor INT not null,
computadora_id int not null,
fecha date not null,
FOREIGN KEY (cedula_distribuidor) REFERENCES Distribuidor(cedula),
FOREIGN KEY (computadora_id) REFERENCES Computadora(id)
);

CREATE TABLE Cliente_p (
cedula INT PRIMARY KEY,
nombre VARCHAR(20) not null,
numero NUMBER not null
);

CREATE TABLE Computadora_Vendida (
cedula_cliente INT not null,
computadora_id int not null,
FOREIGN KEY (cedula_cliente) REFERENCES Cliente_p(cedula),
FOREIGN KEY (computadora_id) REFERENCES Computadora(id)
);


-- Inserciones para la tabla Computadora
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (1, 'HP', 'Pavilion', 800);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (2, 'Dell', 'Inspiron', 900);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (3, 'Lenovo', 'ThinkPad', 1000);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (4, 'Acer', 'Aspire', 700);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (5, 'Asus', 'ROG Strix', 1200);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (6, 'Apple', 'MacBook Air', 1500);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (7, 'MSI', 'GS66 Stealth', 2000);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (8, 'Alienware', 'Area-51m', 2500);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (9, 'Razer', 'Blade 15', 1800);
INSERT INTO Computadora (id, marca, modelo, precio) VALUES (10, 'Samsung', 'Galaxy Book', 1100);

-- Inserciones para la tabla Componente
INSERT INTO Componente (id, nombre, precio) VALUES (1, 'Procesador', 300);
INSERT INTO Componente (id, nombre, precio) VALUES (2, 'Memoria RAM', 100);
INSERT INTO Componente (id, nombre, precio) VALUES (3, 'Disco Duro', 150);
INSERT INTO Componente (id, nombre, precio) VALUES (4, 'Tarjeta Gráfica', 250);
INSERT INTO Componente (id, nombre, precio) VALUES (5, 'Monitor', 200);
INSERT INTO Componente (id, nombre, precio) VALUES (6, 'Teclado', 50);
INSERT INTO Componente (id, nombre, precio) VALUES (7, 'Mouse', 30);
INSERT INTO Componente (id, nombre, precio) VALUES (8, 'Fuente de Poder', 80);
INSERT INTO Componente (id, nombre, precio) VALUES (9, 'Ventilador', 40);
INSERT INTO Componente (id, nombre, precio) VALUES (10, 'Caja/Torre', 70);

-- Inserciones para la tabla Especificaciones
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (1, 1);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (1, 2);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (1, 3);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (1, 4);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (1, 5);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (2, 1);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (2, 2);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (2, 3);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (2, 4);
INSERT INTO Especificaciones (computadora_id, componente_id) VALUES (2, 6);

-- Inserciones para la tabla Distribuidor
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (123456789, 'Distribuidor A', 1111111);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (234567890, 'Distribuidor B', 2222222);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (345678901, 'Distribuidor C', 3333333);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (456789012, 'Distribuidor D', 4444444);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (567890123, 'Distribuidor E', 5555555);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (678901234, 'Distribuidor F', 6666666);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (789012345, 'Distribuidor G', 7777777);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (890123456, 'Distribuidor H', 8888888);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (901234567, 'Distribuidor I', 9999999);
INSERT INTO Distribuidor (cedula, nombre, numero) VALUES (987654321, 'Distribuidor J', 1010101);

-- Inserciones para la tabla Computadora_Comprada
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (123456789, 1, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (234567890, 2, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (345678901, 3, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (456789012, 4, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (567890123, 5, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (678901234, 6, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (789012345, 7, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (890123456, 8, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (901234567, 9, TO_DATE('2024-03-14', 'YYYY-MM-DD'));
INSERT INTO Computadora_Comprada (cedula_distribuidor, computadora_id, fecha) VALUES (987654321, 10, TO_DATE('2024-03-14', 'YYYY-MM-DD'));

-- Inserciones para la tabla Cliente_p
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (111111111, 'Cliente 1', 1111111);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (222222222, 'Cliente 2', 2222222);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (333333333, 'Cliente 3', 3333333);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (444444444, 'Cliente 4', 4444444);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (555555555, 'Cliente 5', 5555555);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (666666666, 'Cliente 6', 6666666);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (777777777, 'Cliente 7', 7777777);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (888888888, 'Cliente 8', 8888888);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (999999999, 'Cliente 9', 9999999);
INSERT INTO Cliente_p (cedula, nombre, numero) VALUES (101010101, 'Cliente 10', 1010101);

-- Inserciones para la tabla Computadora_Vendida
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (111111111, 1);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (222222222, 2);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (333333333, 3);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (444444444, 4);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (555555555, 5);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (666666666, 6);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (777777777, 7);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (888888888, 8);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (999999999, 9);
INSERT INTO Computadora_Vendida (cedula_cliente, computadora_id) VALUES (101010101, 10);



DROP TABLE IF EXISTS Computadora_Vendida;
DROP TABLE IF EXISTS Cliente_p;
DROP TABLE IF EXISTS Computadora_Comprada;
DROP TABLE IF EXISTS Distribuidor;
DROP TABLE IF EXISTS Especificaciones;
DROP TABLE IF EXISTS Componente;
DROP TABLE IF EXISTS Computadora;
