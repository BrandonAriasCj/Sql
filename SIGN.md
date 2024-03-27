En SQL*Plus, la función `SIGN` se utiliza para devolver el signo de un número. Devuelve -1 si el número es negativo, 0 si es cero y 1 si es positivo. Esta función puede ser útil en diversas situaciones, especialmente cuando necesitas clasificar o realizar cálculos basados en el signo de un valor numérico.

Aquí tienes algunos ejemplos prácticos de cómo usar la función `SIGN` en SQL*Plus:

### Ejemplo 1: Clasificar Valores Numéricos

Supongamos que tienes una tabla `productos` con una columna `precio` y quieres clasificar los productos como "Caro", "Medio" o "Barato" según sus precios:

```sql
SELECT nombre_producto, precio,
       CASE SIGN(precio - 50)
           WHEN -1 THEN 'Barato'
           WHEN 0 THEN 'Medio'
           ELSE 'Caro'
       END AS categoria_precio
FROM productos;
```

En este ejemplo:
- Si el precio del producto es menor que 50, `SIGN(precio - 50)` devolverá -1 y el producto se clasificará como "Barato".
- Si el precio es exactamente 50, `SIGN(precio - 50)` devolverá 0 y el producto se clasificará como "Medio".
- Si el precio es mayor que 50, `SIGN(precio - 50)` devolverá 1 y el producto se clasificará como "Caro".

### Ejemplo 2: Cálculo de Bonificaciones

Supongamos que tienes una tabla `empleados` con la columna `salario` y quieres calcular una bonificación basada en el salario:

```sql
SELECT nombre_empleado, salario,
       CASE
           WHEN SIGN(salario - 3000) = -1 THEN salario * 0.1
           WHEN SIGN(salario - 3000) = 0 THEN salario * 0.05
           ELSE salario * 0.02
       END AS bonificacion
FROM empleados;
```

En este ejemplo:
- Si el salario del empleado es menor que 3000, se le otorga una bonificación del 10%.
- Si el salario es exactamente 3000, se le otorga una bonificación del 5%.
- Si el salario es mayor que 3000, se le otorga una bonificación del 2%.

### Ejemplo 3: Clasificar Resultados de una Consulta

Supongamos que tienes una consulta que devuelve valores numéricos y quieres clasificar los resultados como "Positivo", "Negativo" o "Cero":

```sql
SELECT resultado,
       CASE SIGN(resultado)
           WHEN -1 THEN 'Negativo'
           WHEN 0 THEN 'Cero'
           ELSE 'Positivo'
       END AS clasificacion
FROM tabla_resultados;
```

En este caso:
- Si el resultado es negativo, `SIGN(resultado)` devolverá -1 y se clasificará como "Negativo".
- Si el resultado es cero, `SIGN(resultado)` devolverá 0 y se clasificará como "Cero".
- Si el resultado es positivo, `SIGN(resultado)` devolverá 1 y se clasificará como "Positivo".

Estos son solo algunos ejemplos de cómo puedes utilizar la función `SIGN` en SQL*Plus para realizar cálculos y clasificaciones basados en el signo de valores numéricos. Puedes adaptar estos ejemplos según tus necesidades específicas en tus consultas SQL.

Recuerda que `SIGN` es una función simple pero útil para lidiar con valores numéricos y su signo en SQL. Si tienes más preguntas o necesitas más ejemplos, no dudes en preguntar.