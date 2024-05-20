Claro, puedo modificar el código para que la conexión a la base de datos se realice al principio mediante un archivo de inclusión. Aquí tienes cómo hacerlo:

En primer lugar, crea un archivo llamado "conexion.php" que contendrá la conexión a la base de datos:

```php
<?php
// Datos de conexión a la base de datos
$host = "localhost"; // Cambia esto por tu host
$usuario = "nombre_usuario"; // Cambia esto por tu usuario
$password = "contraseña"; // Cambia esto por tu contraseña
$base_de_datos = "nombre_base_de_datos"; // Cambia esto por el nombre de tu base de datos

// Crear conexión
$mysqli = new mysqli($host, $usuario, $password, $base_de_datos);

// Verificar la conexión
if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
}
?>
```

Luego, en el archivo "procesarNuevaTarea.php", incluye este archivo de conexión al principio y utiliza la conexión establecida para procesar la nueva tarea:

```php
<?php
// Incluir el archivo de conexión a la base de datos
include 'conexion.php';

// Recibir los datos JSON
$json_data = file_get_contents('php://input');

// Decodificar los datos JSON en un array PHP
$tarea = json_decode($json_data, true);

// Validar los datos recibidos (puedes agregar más validaciones según tus necesidades)
if (!isset($tarea['nombre']) || !isset($tarea['curso']) || !isset($tarea['fechaLim'])) {
    echo "Error: Datos incompletos.";
    exit;
}

// Preparar la consulta SQL para insertar la nueva tarea
$stmt = $mysqli->prepare("INSERT INTO tareas (nombre, curso, fecha_limite) VALUES (?, ?, ?)");

// Verificar si la consulta preparada tuvo éxito
if ($stmt === false) {
    echo "Error al preparar la consulta.";
    exit;
}

// Vincular los parámetros y ejecutar la consulta
$stmt->bind_param("sss", $tarea['nombre'], $tarea['curso'], $tarea['fechaLim']);
$result = $stmt->execute();

// Verificar si la consulta se ejecutó correctamente
if ($result === false) {
    echo "Error al ejecutar la consulta: " . $stmt->error;
} else {
    echo "Tarea creada correctamente.";
}

// Cerrar la consulta
$stmt->close();
?>
```

Con esta estructura, la conexión a la base de datos se realiza al principio del script "procesarNuevaTarea.php" mediante la inclusión del archivo "conexion.php". Esto hace que el código sea más modular y fácil de mantener. Asegúrate de ajustar los valores de conexión en el archivo "conexion.php" según tus propios detalles de conexión.