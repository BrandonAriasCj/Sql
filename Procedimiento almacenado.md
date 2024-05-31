Un procedimiento almacenado (stored procedure) es un conjunto de sentencias SQL que se almacenan en la base de datos y pueden ser ejecutadas como una unidad. Los procedimientos almacenados son muy útiles para encapsular lógica de negocio, realizar operaciones repetitivas y mejorar el rendimiento y la seguridad de las aplicaciones.

### Características de un Procedimiento Almacenado

1. **Encapsulación:** Permiten encapsular la lógica de negocio en un solo lugar.
2. **Reutilización:** Pueden ser reutilizados en múltiples aplicaciones y procesos.
3. **Rendimiento:** Reducen la carga de procesamiento en el cliente y el tráfico de red, ya que el código SQL se ejecuta en el servidor.
4. **Seguridad:** Pueden restringir el acceso a los datos mediante la implementación de controles de acceso a nivel de base de datos.
5. **Mantenimiento:** Facilitan el mantenimiento de la lógica de negocio, ya que los cambios se realizan en un solo lugar.

### Sintaxis General

La sintaxis para crear un procedimiento almacenado varía ligeramente según el sistema de gestión de bases de datos (DBMS). Aquí se muestra la sintaxis general para MySQL:

```sql
CREATE PROCEDURE nombre_del_procedimiento (parámetros)
BEGIN
    -- Sentencias SQL
END;
```

### Ejemplos de Procedimientos Almacenados

#### 1. Procedimiento Almacenado Simple

**Ejemplo en MySQL:**
Este procedimiento recupera todos los productos de una tabla `Producto`.

```sql
CREATE PROCEDURE ObtenerProductos()
BEGIN
    SELECT * FROM Producto;
END;
```

**Llamar al Procedimiento:**
```sql
CALL ObtenerProductos();
```

#### 2. Procedimiento Almacenado con Parámetros de Entrada

**Ejemplo en MySQL:**
Este procedimiento recupera todos los productos de una categoría específica.

```sql
CREATE PROCEDURE ObtenerProductosPorCategoria(IN categoria_id INT)
BEGIN
    SELECT * FROM Producto WHERE ID_Categoria = categoria_id;
END;
```

**Llamar al Procedimiento:**
```sql
CALL ObtenerProductosPorCategoria(1);
```

#### 3. Procedimiento Almacenado con Parámetros de Entrada y Salida

**Ejemplo en MySQL:**
Este procedimiento calcula el precio total de una orden y devuelve el resultado.

```sql
CREATE PROCEDURE CalcularPrecioTotal(IN orden_id INT, OUT precio_total DECIMAL(10, 2))
BEGIN
    SELECT SUM(Cantidad * Precio_Unitario) INTO precio_total
    FROM Detalle_Orden
    WHERE ID_Orden = orden_id;
END;
```

**Llamar al Procedimiento:**
```sql
SET @total = 0;
CALL CalcularPrecioTotal(1, @total);
SELECT @total;
```

#### 4. Procedimiento Almacenado con Lógica de Negocio Compleja

**Ejemplo en MySQL:**
Este procedimiento inserta un nuevo cliente y devuelve su ID.

```sql
CREATE PROCEDURE InsertarCliente(
    IN nombre VARCHAR(100),
    IN apellido VARCHAR(100),
    IN email VARCHAR(100),
    IN telefono VARCHAR(15),
    IN direccion VARCHAR(255),
    OUT cliente_id INT
)
BEGIN
    INSERT INTO Cliente (Nombre, Apellido, Email, Teléfono, Dirección, Fecha_Registro)
    VALUES (nombre, apellido, email, telefono, direccion, NOW());
    
    SET cliente_id = LAST_INSERT_ID();
END;
```

**Llamar al Procedimiento:**
```sql
SET @nuevo_id = 0;
CALL InsertarCliente('Juan', 'Pérez', 'juan.perez@example.com', '123456789', 'Calle Falsa 123', @nuevo_id);
SELECT @nuevo_id;
```

### Beneficios de Utilizar Procedimientos Almacenados

1. **Rendimiento:** La ejecución de procedimientos almacenados es más rápida que la ejecución de sentencias SQL desde aplicaciones cliente, ya que están precompilados.
2. **Reducción del Tráfico de Red:** Al enviar menos comandos SQL a través de la red, se reduce el tráfico y se mejora el rendimiento de la aplicación.
3. **Mantenimiento Simplificado:** Al encapsular la lógica de negocio en procedimientos almacenados, los cambios en la lógica se pueden realizar en un solo lugar.
4. **Seguridad:** Los procedimientos almacenados pueden controlar el acceso a los datos de manera más granular y segura.

### Conclusión

Los procedimientos almacenados son una herramienta poderosa en la gestión de bases de datos, proporcionando beneficios en términos de rendimiento, seguridad y mantenibilidad. Al utilizarlos adecuadamente, se puede mejorar significativamente la eficiencia y la robustez de una aplicación.