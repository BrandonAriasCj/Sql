Para conectar una página web con una base de datos, necesitas usar un lenguaje de programación del lado del servidor que pueda interactuar con la base de datos y generar el contenido dinámico de la página. Uno de los enfoques comunes es utilizar un lenguaje como PHP para manejar las consultas a la base de datos y luego generar el HTML que se envía al navegador del cliente. Aquí te doy un ejemplo básico de cómo podría ser el código PHP para conectar una página web con una base de datos MySQL:

Supongamos que tienes una base de datos MySQL con una tabla llamada "usuarios" que contiene columnas como "id", "nombre", "email", etc.

```php
<?php
// Datos de conexión a la base de datos
$servername = "localhost"; // Dirección del servidor de la base de datos
$username = "usuario"; // Nombre de usuario de la base de datos
$password = "contraseña"; // Contraseña de la base de datos
$database = "nombre_base_de_datos"; // Nombre de la base de datos

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Consulta SQL para seleccionar todos los usuarios
$sql = "SELECT id, nombre, email FROM usuarios";
$result = $conn->query($sql);

// Verificar si se obtuvieron resultados
if ($result->num_rows > 0) {
    // Output de los datos de cada fila
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"]. " - Nombre: " . $row["nombre"]. " - Email: " . $row["email"]. "<br>";
    }
} else {
    echo "No se encontraron resultados";
}

// Cerrar la conexión
$conn->close();
?>
```

Este es un ejemplo muy básico y no seguro. En un entorno de producción, debes tener en cuenta la seguridad, utilizando consultas preparadas o escapando correctamente los datos para evitar inyecciones SQL. Además, es posible que desees encapsular la lógica de acceso a la base de datos en una clase o funciones reutilizables para mantener un código más limpio y modular.