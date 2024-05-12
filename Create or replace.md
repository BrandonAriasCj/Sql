Claro, te mostraré algunos ejemplos de cómo puedes utilizar la sentencia `CREATE OR REPLACE` en SQL para actualizar objetos de base de datos existentes o crearlos si no existen:

1. **Crear o reemplazar una tabla**:

```sql
CREATE OR REPLACE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100)
);
```

Si la tabla `usuarios` ya existe, esta sentencia la reemplazará con la nueva definición. Si no existe, creará una nueva tabla.

2. **Crear o reemplazar una vista**:

```sql
CREATE OR REPLACE VIEW vista_ventas AS
SELECT producto_id, SUM(cantidad) AS total_vendido
FROM ventas
GROUP BY producto_id;
```

```sql
--block
CREATE OR REPLACE VIEW V_EMPLEADOS10 (Codigo, Empleados, Cargo, Departamento) 
AS SELECT cod_emp , nombre_emp , puesto, cod_dept
FROM empleados
WHERE salario > 2000;
```

Esta sentencia crea o reemplaza la vista `vista_ventas` con la nueva definición proporcionada.

3. **Crear o reemplazar una función almacenada**:

```sql
CREATE OR REPLACE FUNCTION calcular_descuento(precio DECIMAL) RETURNS DECIMAL AS $$
BEGIN
    IF precio > 1000 THEN
        RETURN precio * 0.1;
    ELSE
        RETURN 0;
    END IF;
END;
$$ LANGUAGE plpgsql;
```

Esta sentencia crea o reemplaza la función almacenada `calcular_descuento` con la nueva implementación proporcionada.

4. **Crear o reemplazar un procedimiento almacenado**:

```sql
CREATE OR REPLACE PROCEDURE insertar_producto(nombre VARCHAR(100), precio DECIMAL) AS $$
BEGIN
    INSERT INTO productos (nombre, precio) VALUES (nombre, precio);
END;
$$ LANGUAGE plpgsql;
```

Esta sentencia crea o reemplaza el procedimiento almacenado `insertar_producto` con la nueva implementación proporcionada.

5. **Crear o reemplazar un disparador (trigger)**:

```sql
CREATE OR REPLACE TRIGGER actualizar_stock
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
    UPDATE productos
    SET stock = stock - NEW.cantidad
    WHERE producto_id = NEW.producto_id;
END;
```

Esta sentencia crea o reemplaza el disparador `actualizar_stock` con la nueva lógica proporcionada para actualizar el stock de productos después de cada inserción en la tabla `ventas`.

La sentencia `CREATE OR REPLACE` es útil para realizar cambios en objetos de base de datos existentes sin necesidad de eliminar y recrearlos manualmente, lo que puede simplificar el proceso de desarrollo y mantenimiento.