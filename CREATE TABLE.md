Para crear una nueva tabla en SQL, se utiliza la sentencia `CREATE TABLE`. Esta sentencia permite definir la estructura de la tabla, especificando los nombres de las columnas, los tipos de datos de cada columna y otras propiedades como las restricciones y claves primarias. Aquí te muestro cómo crear una nueva tabla en SQL:

### Sintaxis Básica de `CREATE TABLE`:
La sintaxis básica de `CREATE TABLE` es la siguiente:

```sql
CREATE TABLE nombre_tabla (
    columna1 tipo_dato1,
    columna2 tipo_dato2,
    columna3 tipo_dato3,
    ...
    CONSTRAINT nombre_restriccion1 PRIMARY KEY (columna_primaria),
    CONSTRAINT nombre_restriccion2 FOREIGN KEY (columna_foranea) REFERENCES otra_tabla(columna_referencia)
);
```
```sql
CREATE TABLE miPrimeraTabla (
	curso 
);
```
- `CREATE TABLE nombre_tabla`: Indica que estás creando una nueva tabla con el nombre `nombre_tabla`.
- `( columna1 tipo_dato1, columna2 tipo_dato2, ...)`: Define las columnas de la tabla, cada una con un nombre y un tipo de dato específico.
- `CONSTRAINT nombre_restriccion1 PRIMARY KEY (columna_primaria)`: Define una restricción de clave primaria para la tabla. La clave primaria identifica de manera única cada fila en la tabla.
- `CONSTRAINT nombre_restriccion2 FOREIGN KEY (columna_foranea) REFERENCES otra_tabla(columna_referencia)`: Define una restricción de clave externa para la tabla. La clave externa establece una relación entre esta tabla y otra.

### Ejemplo de Creación de una Nueva Tabla:
Supongamos que queremos crear una tabla llamada `empleados` con las siguientes columnas: `id_empleado`, `nombre`, `apellido`, `edad`, y `departamento`. La columna `id_empleado` será la clave primaria.

```sql
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    departamento VARCHAR(50)
);
```

En este ejemplo:
- `id_empleado INT PRIMARY KEY`: Define una columna llamada `id_empleado` de tipo `INT` como la clave primaria de la tabla.
- `nombre VARCHAR(50)`: Define una columna `nombre` de tipo `VARCHAR` con una longitud máxima de 50 caracteres.
- `apellido VARCHAR(50)`: Define una columna `apellido` de tipo `VARCHAR` con una longitud máxima de 50 caracteres.
- `edad INT`: Define una columna `edad` de tipo `INT` para almacenar la edad de los empleados.
- `departamento VARCHAR(50)`: Define una columna `departamento` de tipo `VARCHAR` con una longitud máxima de 50 caracteres.

### Ejemplo con Clave Externa:
Si queremos agregar una clave externa en la tabla `empleados` que haga referencia a la tabla `departamentos`, podríamos hacerlo de la siguiente manera:

```sql
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    id_departamento INT,
    CONSTRAINT fk_departamento
        FOREIGN KEY (id_departamento) 
        REFERENCES departamentos(id_departamento)
);
```

En este ejemplo:
- `id_departamento INT`: Se agrega una columna `id_departamento` que será utilizada como clave externa.
- `CONSTRAINT fk_departamento`: Se define una restricción de clave externa llamada `fk_departamento`.
- `FOREIGN KEY (id_departamento)`: Especifica que `id_departamento` es la clave externa que hace referencia a la columna `id_departamento` en la tabla `departamentos`.
- `REFERENCES departamentos(id_departamento)`: Indica que la clave externa `id_departamento` hace referencia a la columna `id_departamento` en la tabla `departamentos`.

### Notas Importantes:
- El tipo de dato y la longitud pueden variar dependiendo del sistema de gestión de bases de datos que estés utilizando (por ejemplo, `INT`, `VARCHAR`, `DATE`, etc.).
- Las restricciones como las claves primarias y las claves externas garantizan la integridad de los datos y las relaciones entre las tablas.

Recuerda adaptar la estructura de la tabla según tus necesidades específicas y las reglas de diseño de tu base de datos. ¡Si tienes más preguntas o necesitas más ejemplos, no dudes en preguntar!

[[INSERT INTO]]
