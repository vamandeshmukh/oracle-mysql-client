<?php

$servername = "localhost";
$username = "root";
$password = "root";

  $conn = new PDO("mysql:host=$servername;dbname=oracle-demo", $username, $password);

  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  echo "Connected successfully";


?>
