<?php
$servername = "localhost";
$username = "rmihailescu22";
$password = "1234";
$dbname = "bbdduniversitat";

// Crear connexió
$conn = new mysqli($servername, $username, $password, $dbname);

// Comprovar connexió
if ($conn->connect_error) {
  die("Connexió fallida: " . $conn->connect_error);
}

// Consulta 1: Mostrar les dades de tot professorat que tenen una longitud de 7 lletres o més del nom.
$sql = "SELECT * FROM Profesor WHERE LENGTH(nombre) >= 7";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "dni: " . $row["dni"]. " - Nom: " . $row["nombre"]. " " . $row["apellidos"]. "<br>";
  }
} else {
  echo "No s'han trobat resultats";
}

// Consulta 2: Mostrar les dades d’alumnes majors de 30 anys i ordenar de menor a major.
$sql = "SELECT * FROM Estudiante WHERE edad > 30 ORDER BY edad ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "dni: " . $row["dni"]. " - Nom: " . $row["nombre"]. " " . $row["apellidos"]. "<br>";
  }
} else {
  echo "No s'han trobat resultats";
}

// Consulta 3: Mostrar tot estudiant que va bicicleta a la universitat.
$sql = "SELECT * FROM Estudiante WHERE bicicleta = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "dni: " . $row["dni"]. " - Nom: " . $row["nombre"]. " " . $row["apellidos"]. "<br>";
  }
} else {
  echo "No s'han trobat resultats";
}

$conn->close();
?>



