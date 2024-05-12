Crear índices en SQL es una práctica común para mejorar el rendimiento de las consultas al acceder a datos en una base de datos. Los índices permiten acelerar la recuperación de datos al proporcionar una estructura optimizada para buscar rápidamente registros. Aquí tienes algunos ejemplos de cómo crear índices en SQL:

1. **Crear un índice simple en una columna**:

```sql
CREATE INDEX idx_nombre_columna
ON tabla (nombre_columna);
```

```sql
--block
CREATE INDEX idx_dni
ON CLIENTE2 (Dni);
```

Este comando crea un índice en la columna `nombre_columna` de la tabla `tabla`.

2. **Crear un índice único en una columna**:

```sql
CREATE UNIQUE INDEX idx_nombre_columna_unico
ON tabla (nombre_columna);
```

Este comando crea un índice único en la columna `nombre_columna` de la tabla `tabla`, lo que significa que no se permiten valores duplicados en esa columna.

3. **Crear un índice compuesto en múltiples columnas**:

```sql
CREATE INDEX idx_columnas_compuestas
ON tabla (columna1, columna2, columna3);
```

Este comando crea un índice en las columnas `columna1`, `columna2` y `columna3` de la tabla `tabla`. Este tipo de índice es útil cuando necesitas optimizar consultas que involucran múltiples columnas.

4. **Crear un índice con una condición WHERE**:

```sql
CREATE INDEX idx_nombre_columna_condicional
ON tabla (nombre_columna)
WHERE condicion;
```

Este comando crea un índice en la columna `nombre_columna` de la tabla `tabla`, pero solo para las filas que cumplan con la condición especificada. Esto puede ser útil cuando solo deseas indexar un subconjunto de filas.

5. **Crear un índice en una tabla temporal**:

```sql
CREATE INDEX idx_nombre_columna
ON TEMPORARY tabla_temporal (nombre_columna);
```

Este comando crea un índice en la columna `nombre_columna` de la tabla temporal `tabla_temporal`. Los índices en tablas temporales pueden mejorar el rendimiento de las consultas complejas que involucran operaciones en dichas tablas.

Recuerda que la creación de índices puede mejorar el rendimiento de las consultas de lectura, pero también puede ralentizar las operaciones de escritura, ya que los índices deben mantenerse actualizados con cada inserción, actualización o eliminación de datos. Es importante evaluar el impacto en el rendimiento antes de crear índices en una base de datos.