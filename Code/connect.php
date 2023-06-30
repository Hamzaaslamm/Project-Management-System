<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "Record";

$conn = mysqli_connect($servername, $username, $password, $database) or die("Unable to connect with database: ".mysqli_connect_error());
?>