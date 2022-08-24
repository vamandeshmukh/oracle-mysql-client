<?php

$url = "jdbc:mysql://localhost:3306/oracle-demo";
$user = "root";
$password = "root";

// Create connection
$conn = new mysqli($url, $user, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
