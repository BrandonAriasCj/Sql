El producto cartesiano en SQL se refiere a una operación que combina todas las filas de dos o más tablas, generando todas las combinaciones posibles de filas entre ellas. Puedes obtener el producto cartesiano utilizando la sintaxis de la cláusula `FROM` sin especificar una condición de unión.

Aquí tienes un ejemplo de cómo obtener el producto cartesiano de dos tablas:

```sql
SELECT *
FROM tabla1, tabla2;
```

Este código producirá el producto cartesiano de las tablas `tabla1` y `tabla2`, devolviendo todas las combinaciones posibles de filas entre ellas.

Sin embargo, ten en cuenta que el producto cartesiano puede generar un gran número de filas si las tablas tienen muchas filas, por lo que es importante usarlo con precaución. A menudo, se utiliza en combinación con otras cláusulas como `WHERE`, `JOIN` o `ON` para limitar el conjunto de resultados. Por ejemplo:

```sql
SELECT *
FROM tabla1, tabla2
WHERE tabla1.columna = tabla2.columna;
```

En este caso, la cláusula `WHERE` filtra las filas del producto cartesiano basándose en la igualdad de los valores de la columna especificada. Esto convierte el resultado en un conjunto más manejable y relevante.