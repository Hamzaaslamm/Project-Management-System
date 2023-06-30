<?php 
include 'connect.php';

$Amount = $_POST['Amount'];


$sql = "INSERT INTO payment( AMOUNT) VALUES ('$Amount')";
if ($conn->query($sql)) {
	# code...
	include 'sendpay.html';
}
else{

	echo "Unable to insert data".$conn->error;
	include 'Online Payment.html';
}
$conn->close();


 ?>