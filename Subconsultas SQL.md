Las subconsultas en SQL son consultas anidadas dentro de otras consultas SQL. Estas subconsultas pueden aparecer en la cláusula SELECT, FROM, WHERE o HAVING de una consulta principal. Se utilizan para recuperar datos de una o más tablas y luego usar esos datos recuperados para realizar consultas adicionales dentro de la consulta principal.

Aquí hay algunos ejemplos de cómo se pueden usar las subconsultas en SQL:

1. Subconsulta en la cláusula SELECT:
```sql
SELECT columna1, columna2, (SELECT COUNT(*) 
							FROM tabla2 
							WHERE condicion) AS total
FROM tabla1;
```

2. Subconsulta en la cláusula FROM:
```sql
SELECT columna1, columna2
FROM (SELECT columna1, columna2 
	  FROM tabla1 
	  WHERE condicion) AS subconsulta;
```

3. Subconsulta en la cláusula WHERE:
```sql
SELECT columna1, columna2
FROM tabla1
WHERE columna1 = (SELECT columna1 
				  FROM tabla2 
				  WHERE condicion);
```

4. Subconsulta en la cláusula HAVING:
```sql
SELECT columna1, COUNT(*) AS total
FROM tabla1
GROUP BY columna1
HAVING COUNT(*) > (SELECT COUNT(*) 
				   FROM tabla2 
				   WHERE condicion);
```

Las subconsultas pueden devolver un solo valor (subconsulta escalar) o múltiples filas y columnas (subconsulta de tabla). Es importante que la subconsulta esté bien escrita y devuelva el tipo de datos adecuado que se pueda comparar o utilizar en la consulta principal.