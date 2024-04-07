Las funciones de grupo en SQL se utilizan con la cláusula `GROUP BY` para realizar cálculos en un conjunto de filas agrupadas. Estas funciones realizan operaciones en conjuntos de valores y devuelven un solo valor por grupo. Aquí tienes algunos ejemplos de las funciones de grupo más comunes:

### AVG
La función `AVG` calcula el promedio de los valores en una columna para cada grupo.

```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
```

En este ejemplo, calculamos el salario promedio por departamento en la tabla "employees".

### COUNT
La función `COUNT` cuenta el número de filas en un grupo.

```sql
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;
```

Aquí estamos contando el número de empleados por departamento en la tabla "employees".

### MAX
La función `MAX` devuelve el valor máximo en una columna para cada grupo.

```sql
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;
```

Esto nos da el salario máximo por departamento en la tabla "employees".

### MIN
La función `MIN` devuelve el valor mínimo en una columna para cada grupo.

```sql
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;
```

Obtenemos el salario mínimo por departamento en la tabla "employees".

### SUM
La función `SUM` suma los valores en una columna para cada grupo.

```sql
SELECT department, SUM(sales) AS total_sales
FROM sales_data
GROUP BY department;
```

En este caso, estamos sumando las ventas por departamento en la tabla "sales_data".

### STDDEV
La función `STDDEV` calcula la desviación estándar de los valores en una columna para cada grupo.

```sql
SELECT department, STDDEV(salary) AS std_dev_salary
FROM employees
GROUP BY department;
```

Esto nos dará la desviación estándar de los salarios por departamento en la tabla "employees".

### VARIANCE
La función `VARIANCE` calcula la varianza de los valores en una columna para cada grupo.

```sql
SELECT department, VARIANCE(salary) AS salary_variance
FROM employees
GROUP BY department;
```

En este ejemplo, estamos calculando la varianza de los salarios por departamento en la tabla "employees".

Estos son solo algunos ejemplos de cómo funcionan las funciones de grupo en SQL. Puedes usar estas funciones para obtener resúmenes y agregaciones de datos en conjuntos de filas agrupadas según tus necesidades.