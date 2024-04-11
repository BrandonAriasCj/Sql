Para eliminar una fila de una tabla SQL desde la línea de comandos (CLI), puedes utilizar la sentencia SQL `DELETE`. Aquí te muestro cómo hacerlo:

Supongamos que tienes una tabla llamada `nombre_de_la_tabla` y quieres eliminar una fila basada en cierta condición, por ejemplo, eliminar la fila donde el campo `id` sea igual a 1. La consulta sería así:

```sql
DELETE FROM nombre_de_la_tabla WHERE id = 1;
```

Para ejecutar esta consulta desde la línea de comandos, dependiendo del sistema de gestión de bases de datos que estés utilizando, usarás un cliente específico. Aquí te muestro algunos ejemplos para diferentes sistemas:

### MySQL

```bash
mysql -u tu_usuario -p tu_base_de_datos -e "DELETE FROM nombre_de_la_tabla WHERE id = 1;"
```
- `tu_usuario`: Es tu nombre de usuario de MySQL.
- `tu_base_de_datos`: Es el nombre de tu base de datos.

Te pedirá tu contraseña de MySQL después de ejecutar este comando.

### PostgreSQL

```bash
psql -U tu_usuario -d tu_base_de_datos -c "DELETE FROM nombre_de_la_tabla WHERE id = 1;"
```
- `tu_usuario`: Es tu nombre de usuario de PostgreSQL.
- `tu_base_de_datos`: Es el nombre de tu base de datos.

Te pedirá tu contraseña de PostgreSQL después de ejecutar este comando.

### SQL Server (MSSQL)

```bash
sqlcmd -S tu_servidor -U tu_usuario -P tu_contraseña -d tu_base_de_datos -Q "DELETE FROM nombre_de_la_tabla WHERE id = 1;"
```
- `tu_servidor`: Es el nombre de tu servidor SQL Server.
- `tu_usuario`: Es tu nombre de usuario de SQL Server.
- `tu_contraseña`: Es tu contraseña de SQL Server.
- `tu_base_de_datos`: Es el nombre de tu base de datos.

Estos son solo ejemplos generales. Asegúrate de reemplazar `nombre_de_la_tabla`, `id`, `tu_usuario`, `tu_base_de_datos`, `tu_servidor`, y `tu_contraseña` con los valores correspondientes para tu entorno específico.

Recuerda siempre tener cuidado al ejecutar comandos `DELETE`, ya que eliminarán datos de tu tabla de forma permanente. Es buena práctica hacer una copia de seguridad de tus datos antes de realizar cambios importantes.