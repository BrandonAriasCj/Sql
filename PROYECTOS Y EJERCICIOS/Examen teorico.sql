SELECT * FROM empleados;


SELECT AVG(comision) 
FROM empleados;


SELECT
AVG(NVL(comision,0)) 
FROM empleados;


-- Ejercicio 02

SELECT 
MIN(salario),
MAX(salario),
SUM(salario),
AVG(salario)
FROM empleados;


-- Ejercicio 03

SELECT puesto,
MIN(salario),
MAX(salario),
SUM(salario),
AVG(salario)
FROM empleados
GROUP BY puesto;

-- Ejercicio 04

SELECT puesto, count(*) 
FROM empleados
GROUP BY puesto;

-- Ejercicio 05

SELECT 
(MAX(SALARIO) -  MIN(SALARIO)) 
"DIFERENCIA DE LOS SALARIOS"
FROM empleados;

-- Ejercicio 06

SELECT PUESTO, COUNT(*) 
"NUM EMPLEADOS"
FROM EMPLEADOS
GROUP BY PUESTO
HAVING COUNT(*) > 3;


-- Ejercicio 07

SELECT cod_dept "Departamentos",
COUNT(*) "Empleados",
MAX(salario) 
FROM empleados 
WHERE salario < 3000 
GROUP BY cod_dept 
HAVING count(*) < 3;

