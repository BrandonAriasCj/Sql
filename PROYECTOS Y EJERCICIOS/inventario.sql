CREATE DATABASE INVENTARIO
---------------------------
USE INVENTARIO
---------------------------
CREATE TABLE ARTICULO(
	CODIGO INT PRIMARY KEY,
	NOMBRE VARCHAR(50),
	STOCK INT,
	PRECIO DECIMAL(8,2)
);
---------------------------
INSERT INTO ARTICULO VALUES(1,'TABLET', 20,1500)
-----------------------------
INSERT INTO ARTICULO VALUES(2,'LAPTOP', 10, 1500)
----------------------------
SELECT * FROM ARTICULO
