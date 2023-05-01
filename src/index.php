<?php

// Connect to MySQL database
$servername = "localhost";
$username = "root";
$password = "password";
$dbname = "Redlock";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Retrieve data from MySQL database
$sql = "SELECT * FROM users";
$result = $conn->query($sql);

// Display data in HTML table
if ($result->num_rows > 0) {
  echo "<table><tr><th>ID</th><th>Nama</th><th>Alamat</th><th>Jabatan</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["ID"]."</td><td>".$row["Nama"]."</td><td>".$row["Alamat"]."</td><td>".$row["Jabatan"]."</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

// Close MySQL connection
$conn->close();
?>
