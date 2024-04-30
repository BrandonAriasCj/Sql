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