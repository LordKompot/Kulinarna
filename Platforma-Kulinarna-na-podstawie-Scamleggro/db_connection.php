<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "scamleggro";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("połączenie nieudane:" . $conn->connect_error);
}
?>