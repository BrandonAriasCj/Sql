En SQL y SQL*Plus, la función `SUBSTR` (abreviatura de "substring") se utiliza para extraer una parte de una cadena de texto. Puedes usarla para obtener una porción específica de una cadena, especificando la posición de inicio y la longitud de los caracteres que deseas extraer. 

La sintaxis básica de la función `SUBSTR` es la siguiente:

```sql
SUBSTR(cadena, posición_inicio, [longitud])
```

- `cadena`: Es la cadena de texto de la cual deseas extraer una parte.
- `posición_inicio`: Es la posición dentro de la cadena desde la cual empezar a extraer los caracteres. La primera posición es 1.
- `longitud` (opcional): Es el número de caracteres que deseas extraer. Si omites este parámetro, `SUBSTR` devolverá todos los caracteres desde `posición_inicio` hasta el final de la cadena.

Aquí hay algunos ejemplos de cómo usar `SUBSTR` en SQL*Plus:

### Ejemplo 1: Extraer los primeros 3 caracteres de una cadena
Supongamos que tienes una tabla llamada `clientes` con una columna `nombre` y quieres obtener los primeros 3 caracteres de cada nombre:

```sql
SELECT SUBSTR(nombre, 1, 3) AS primeros_tres_caracteres
FROM clientes;
```

### Ejemplo 2: Extraer los últimos 5 caracteres de una cadena
Si quieres obtener los últimos 5 caracteres de una cadena, pero no sabes su longitud, puedes hacerlo así:

```sql
SELECT SUBSTR(cadena, -5) AS ultimos_cinco_caracteres
FROM tabla;
```

### Ejemplo 3: Usando `SUBSTR` con una condición
Supongamos que en una tabla `empleados` tienes un campo `codigo_empleado` que tiene un formato específico, como los primeros 3 caracteres representando el departamento. Puedes extraer esta información así:

```sql
SELECT
    codigo_empleado,
    SUBSTR(codigo_empleado, 1, 3) AS departamento
FROM empleados;
```

En este ejemplo, `SUBSTR` extraerá los primeros 3 caracteres de `codigo_empleado`, que asumimos que representan el departamento al que pertenece el empleado.

### Ejemplo 4: Usando `SUBSTR` sin especificar la longitud
Si omites el tercer parámetro, `SUBSTR` devolverá todos los caracteres desde la posición de inicio hasta el final de la cadena:

```sql
SELECT SUBSTR(descripcion, 3) AS parte_restante
FROM productos;
```

En este caso, se extraerán todos los caracteres de `descripcion` comenzando desde el tercer carácter hasta el final.

`SUBSTR` es una función muy útil para manipular cadenas de texto en SQL y SQL*Plus, permitiéndote obtener partes específicas de las mismas según tus necesidades.