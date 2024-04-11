Para modificar una fila en una tabla SQL, se utiliza la sentencia `UPDATE`. Esta sentencia te permite cambiar los valores de una o varias columnas en una o varias filas de una tabla, basado en una condición. Aquí te muestro cómo hacerlo:

Supongamos que tienes una tabla llamada `nombre_de_la_tabla` y quieres modificar el valor de una columna llamada `columna_a_modificar` a un nuevo valor, donde el campo `condicion_columna` sea igual a cierto valor. La consulta sería así:

```sql
UPDATE nombre_de_la_tabla
SET columna_a_modificar = 'nuevo_valor'
WHERE condicion_columna = 'cierto_valor';
```

Por ejemplo, si tienes una tabla llamada `usuarios` y quieres cambiar el nombre de un usuario con `id` igual a 1 a "Juan", la consulta sería así:

```sql
UPDATE usuarios
SET nombre = 'Juan'
WHERE id = 1;
```

Para ejecutar esta consulta desde la línea de comandos, de manera similar a como se hizo con `DELETE`, utilizarías un cliente específico para tu sistema de gestión de bases de datos. Aquí te muestro algunos ejemplos:

### MySQL

```bash
mysql -u tu_usuario -p tu_base_de_datos -e "UPDATE usuarios SET nombre = 'Juan' WHERE id = 1;"
```

### PostgreSQL

```bash
psql -U tu_usuario -d tu_base_de_datos -c "UPDATE usuarios SET nombre = 'Juan' WHERE id = 1;"
```

### SQL Server (MSSQL)

```bash
sqlcmd -S tu_servidor -U tu_usuario -P tu_contraseña -d tu_base_de_datos -Q "UPDATE usuarios SET nombre = 'Juan' WHERE id = 1;"
```

Recuerda reemplazar `nombre_de_la_tabla`, `columna_a_modificar`, `condicion_columna`, `cierto_valor`, `tu_usuario`, `tu_base_de_datos`, `tu_servidor`, `tu_contraseña`, y los valores de los campos a modificar según tus necesidades.

Al igual que con `DELETE`, ten en cuenta que `UPDATE` modifica los datos de manera permanente en tu tabla. Asegúrate de tener una copia de seguridad de tus datos antes de realizar cualquier modificación importante.