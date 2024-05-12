CREATE TABLE ALUMNOS (
    codigo NUMBER(6) PRIMARY KEY NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    genero CHAR(1) NOT NULL,
    cod_carrera VARCHAR(10) NOT NULL,
    ciclo INT NOT NULL,
    cate_socioeconomica CHAR(1) NOT NULL,
    telefono NUMBER(9) NOT NULL,
    nacimiento DATE NOT NULL,
    fecha_ingreso DATE,
    creditos INT
);

alter table ALUMNOS  
add promedio_gen NUMBER(2,2);

COMMIT;

select * from alumnos;


INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117654,'Brandon Arias Cjuno', 'M','c24', 2, 'B', 945876233, TO_DATE('2006-05-15', 'YYYY-MM-DD'), TO_DATE('2023-05-15', 'YYYY-MM-DD'), 10);

DROP TABLE ALUMNOS;

select * from alumnos;

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117654,'Brandon Arias Cjuno', 'M','c24', 2, 'B', 945876233, TO_DATE('2006-05-15', 'YYYY-MM-DD'), TO_DATE('2023-05-15', 'YYYY-MM-DD'), 10);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117655,'Laura Gonzalez Diaz', 'F','a12', 3, 'A', 945876234, TO_DATE('2005-08-20', 'YYYY-MM-DD'), TO_DATE('2023-08-20', 'YYYY-MM-DD'), 100);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117656,'Diego Martinez Lopez', 'M','b18', 4, 'C', 945876235, TO_DATE('2004-10-10', 'YYYY-MM-DD'), TO_DATE('2022-10-10', 'YYYY-MM-DD'), 150);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117657,'Sofia Perez Ramirez', 'F','d22', 5, 'D', 945876236, TO_DATE('2003-12-05', 'YYYY-MM-DD'), TO_DATE('2021-12-05', 'YYYY-MM-DD'), 50);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117658,'Carlos Rodriguez Garcia', 'M','a10', 6, 'A', 945876237, TO_DATE('2002-09-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'), 80);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117659,'Ana Torres Fernandez', 'F','c28', 1, 'B', 945876238, TO_DATE('2001-07-15', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 30);

INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117660,'Javier Sanchez Perez', 'M','b15', 2, 'C', 945876239, TO_DATE('2000-04-10', 'YYYY-MM-DD'), TO_DATE('2023-04-10', 'YYYY-MM-DD'), 200);



UPDATE ALUMNOS
SET ciclo = 7
WHERE creditos > 100;

DELETE FROM ALUMNOS
WHERE creditos <= 40;

DELETE ALUMNOS;


---------------------------------------------------------------
CREATE TABLE PRODUCTO (
	id_producto NUMBER(5) PRIMARY KEY,
	nombre VARCHAR(20),
	estado CHAR(1),
	precio NUMBER(7,2),
	categoria CHAR(1)
);

alter table PRODUCTO  
add Marca varchar(40);  
COMMIT;


INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (1, 'balon', 1, 50, 'a','adidas');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (2, 'guitarra', 1, 400, 'c','orange');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (3, 'guitarra black', 0, 700, 'c','black');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (4, 'amplificador', 0, 200, 'b','orange');




-- Producto categoría 'a, b, c, '
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (5, 'Pantalones vaqueros', 0, 29.99, 'a', 'gean');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (6, 'Reloj de pulsera', 1, 79.99, 'b','rolex');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (7, 'Audioblutoo', 0, 59.99, 'c', 'motorola');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (8, 'Bolso de mano', 1, 34.99, 'd', 'sara');


-- ejercicio 6 ingrese con &
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (&id_producto, '&nombre', '&estado', &precio, '&categoria', '&marca');
--(9, 'laptop', 1, 3000, 'c', 'asus')
--(10, 'celular', 0, 1500, 'c', 'apple')

select * from PRODUCTO;

TRUNCATE TABLE PRODUCTO;
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (3, 'guitarra black', 0, 700, 'c','black');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (4, 'amplificador', 0, 200, 'b','orange');
CREATE TABLE PRODUCTO (
	id_producto NUMBER(5) PRIMARY KEY,
	nombre VARCHAR(20),
	estado CHAR(1),
	precio NUMBER(7,2),
	categoria CHAR(1)
);

alter table PRODUCTO  
add Marca varchar(40);  
COMMIT;


INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (1, 'balon', 1, 50, 'a','adidas');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (2, 'guitarra', 1, 400, 'c','orange');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (3, 'guitarra black', 0, 700, 'c','black');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (4, 'amplificador', 0, 200, 'b','orange');




-- Producto categoría 'a, b, c, '
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (5, 'Pantalones vaqueros', 0, 29.99, 'a', 'gean');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (6, 'Reloj de pulsera', 1, 79.99, 'b','rolex');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (7, 'Audioblutoo', 0, 59.99, 'c', 'motorola');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (8, 'Bolso de mano', 1, 34.99, 'd', 'sara');


-- ejercicio 6 ingrese con &
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (&id_producto, '&nombre', '&estado', &precio, '&categoria', '&marca');
--(9, 'laptop', 1, 3000, 'c', 'asus')
--(10, 'celular', 0, 1500, 'c', 'apple')

select * from PRODUCTO;

TRUNCATE TABLE PRODUCTO;
select * from alumnos;
SERT 1
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117654,'Brandon Arias Cjuno', 'M','c24', 2, 'B', 945876233, TO_DATE('2006-05-15', 'YYYY-MM-DD'), TO_DATE('2023-05-15', 'YYYY-MM-DD'), 10);

-- INSERT 2
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117655,'Laura Gonzalez Diaz', 'F','a12', 3, 'A', 945876234, TO_DATE('2005-08-20', 'YYYY-MM-DD'), TO_DATE('2023-08-20', 'YYYY-MM-DD'), 100);

-- INSERT 3
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117656,'Diego Martinez Lopez', 'M','b18', 4, 'C', 945876235, TO_DATE('2004-10-10', 'YYYY-MM-DD'), TO_DATE('2022-10-10', 'YYYY-MM-DD'), 150);

-- INSERT 4
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117657,'Sofia Perez Ramirez', 'F','d22', 5, 'D', 945876236, TO_DATE('2003-12-05', 'YYYY-MM-DD'), TO_DATE('2021-12-05', 'YYYY-MM-DD'), 50);

-- INSERT 5
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117658,'Carlos Rodriguez Garcia', 'M','a10', 6, 'A', 945876237, TO_DATE('2002-09-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'), 80);

-- INSERT 6
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117659,'Ana Torres Fernandez', 'F','c28', 1, 'B', 945876238, TO_DATE('2001-07-15', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 30);

-- INSERT 7
INSERT INTO ALUMNOS (codigo, nombre, genero, cod_carrera, ciclo, cate_socioeconomica, telefono, nacimiento, fecha_ingreso, creditos)
VALUES (117660,'Javier Sanchez Perez', 'M','b15', 2, 'C', 945876239, TO_DATE('2000-04-10', 'YYYY-MM-DD'), TO_DATE('2023-04-10', 'YYYY-MM-DD'), 200);

---------------------------------------------
alter table PRODUCTO  
add Marca varchar(40);  
COMMIT;


INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (1, 'balon', 1, 50, 'a','adidas');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (2, 'guitarra', 1, 400, 'c','orange');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (3, 'guitarra black', 0, 700, 'c','black');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (4, 'amplificador', 0, 200, 'b','orange');




-- Producto categoría 'a, b, c, '
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (5, 'Pantalones vaqueros', 0, 29.99, 'a', 'gean');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria,marca)
VALUES (6, 'Reloj de pulsera', 1, 79.99, 'b','rolex');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (7, 'Audioblutoo', 0, 59.99, 'c', 'motorola');

INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (8, 'Bolso de mano', 1, 34.99, 'd', 'sara');


-- ejercicio 6 ingrese con &
INSERT INTO PRODUCTO (id_producto, nombre, estado, precio, categoria, marca)
VALUES (&id_producto, '&nombre', '&estado', &precio, '&categoria', '&marca');
--(9, 'laptop', 1, 3000, 'c', 'asus')
--(10, 'celular', 0, 2500, 'c', 'apple')

select * from PRODUCTO;

TRUNCATE TABLE PRODUCTO;