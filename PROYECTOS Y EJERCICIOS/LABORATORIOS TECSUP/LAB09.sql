-------- SQL SEMANA 09
select * from V_EMPLEADOS10;
select * from V_EMPLEADOS20;



-- Ejercicio 01
CREATE VIEW V_EMPLEADOS10 AS
SELECT cod_emp, nombre_emp, puesto, cod_dept
FROM empleados
WHERE cod_dept = 10;

-- Ejercicio 02
CREATE OR REPLACE VIEW V_EMPLEADOS10 (Codigo, Empleados, Cargo, Departamento) 
AS SELECT cod_emp, nombre_emp , puesto, cod_dept 
FROM empleados
WHERE salario > 2000;

-- Ejercicio 03
CREATE OR REPLACE VIEW V_EMPLEADOS20 (Codigo, Nombre, Puesto, Departamento) AS
SELECT cod_emp, nombre_emp, puesto, cod_dept
FROM empleados
WHERE cod_dept = 20
WITH CHECK OPTION;

-- Ejercicio 04
INSERT INTO V_EMPLEADOS20 
(Codigo, Nombre, Puesto, Departamento)
VALUES(0423, 'GATO','GERENTE',20);

-- Ejercicio 05
CREATE TABLE CLIENTE2 (
Codigo NUMBER(4),
Nombre VARCHAR(20),
Dni NUMBER(10),
Email VARCHAR(30)
);

-- Ejercicio 06
CREATE UNIQUE INDEX IDX_DNI
ON CLIENTE2 (DNI);

-- Ejercicio 07
ALTER TABLE cliente2
ADD PRIMARY KEY (codigo, nombre, dni, email);

-- Ejercicio 08
SELECT * FROM ALL_INDEXES WHERE TABLE_NAME LIKE 'CLIENTE2';


-- Ejercicio 09
CREATE INDEX IDX_NOMBRE
ON CLIENTE2 (nombre);

-- Ejercicio 10
DROP INDEX IDX_DNI;

-- Ejercicio 11

-- Ejercicio 12


-- Ejercicio 13


-- Ejercicio 14


