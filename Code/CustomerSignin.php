<?php
	include 'connect.php';
	$email = $_POST['email'];
	$pass = $_POST['password'];

	$sql = "SELECT * FROM `CUSTOMER` WHERE CUSTOMER_EMAIL LIKE '%$email%' AND CUSTOMER_PASSWORD LIKE '%$pass%'";
	$result = $conn->query($sql);

	if ($result -> num_rows >0) {
		while ($row = $result->fetch_assoc()){
		 include 'Customer Dashboard.html';
		}
	} else {
		echo "Email or Password Incorrect!";
			include 'Customer Signin.html';
	}
	?>