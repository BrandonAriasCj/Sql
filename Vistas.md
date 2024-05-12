En SQL, las "vistas" son consultas guardadas que puedes usar como tablas virtuales. Son útiles para simplificar consultas complejas, ocultar la complejidad de la base de datos y proporcionar una capa de abstracción de los datos. Aquí tienes algunos ejemplos de cómo crear y usar vistas en SQL:

1. **Crear una vista simple**:

```sql
CREATE VIEW vista_empleados AS
SELECT empleado_id, nombre, apellido, salario
FROM empleados
WHERE departamento = 'Ventas';
```

```sql
--block
CREATE VIEW V_EMPLEADOS10 AS
SELECT cod_emp, nombre_emp, puesto, cod_dept
FROM empleados
WHERE cod_dept = 10;
```

Esta vista crea una tabla virtual llamada `vista_empleados` que contiene solo los empleados del departamento de ventas, con las columnas `empleado_id`, `nombre`, `apellido` y `salario`.

2. **Usar una vista en una consulta**:

```sql
SELECT *
FROM vista_empleados;
```

Esta consulta selecciona todos los campos de la vista `vista_empleados`, que es una forma conveniente de acceder a la información de los empleados del departamento de ventas sin tener que escribir la consulta completa cada vez.

3. **Crear una vista con JOINs**:

```sql
CREATE VIEW vista_ordenes AS
SELECT o.order_id, o.customer_id, c.customer_name, o.order_date
FROM ordenes o
JOIN clientes c ON o.customer_id = c.customer_id;
```

Esta vista combina información de las tablas `ordenes` y `clientes`, mostrando el ID del pedido, el ID del cliente, el nombre del cliente y la fecha del pedido.

4. **Crear una vista con agregaciones**:

```sql
CREATE VIEW vista_ventas_mensuales AS
SELECT DATE_FORMAT(fecha_venta, '%Y-%m') AS mes, SUM(monto) AS total_ventas
FROM ventas
GROUP BY DATE_FORMAT(fecha_venta, '%Y-%m');
```

Esta vista calcula las ventas mensuales sumando los montos de ventas y agrupándolos por mes.

5. **Crear una vista con subconsultas**:

```sql
CREATE VIEW vista_clientes_con_mas_ordenes AS
SELECT cliente_id, COUNT(*) AS num_ordenes
FROM ordenes
GROUP BY cliente_id
HAVING num_ordenes > (SELECT AVG(num_ordenes) FROM (
                        SELECT cliente_id, COUNT(*) AS num_ordenes
                        FROM ordenes
                        GROUP BY cliente_id
                    ) AS subquery);
```

Esta vista muestra los clientes que tienen más órdenes que el promedio de órdenes por cliente.

Recuerda que las vistas pueden simplificar tus consultas y hacer que tu código sea más legible y mantenible, pero debes tener en cuenta el rendimiento, ya que pueden afectarlo si se usan incorrectamente.

