<?php 
include 'connect.php';


$name = $_POST['cname'];
$cnic = $_POST['cnic'];
$address = $_POST['address'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$pass = $_POST['pass'];



$sql = "INSERT INTO CUSTOMER (CUSTOMER_NAME, CUSTOMER_CNIC, CUSTOMER_ADDRESS, CUSTOMER_PHONE_NO, CUSTOMER_EMAIL, CUSTOMER_PASSWORD, PM_CNIC) VALUES ('$name', '$cnic', '$address', '$phone', '$email', '$pass', '34000-0000000-0') ";

if ($conn->query($sql)) {
	include 'signupMsg.html';
} else {
	echo "Unable to insert Data ".$conn->error;	
	include 'Customer Signup.html';
}
$conn->close();
?>