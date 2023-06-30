<?php
	include 'connect.php';
	$email = $_POST['email'];
	$pass = $_POST['password'];

	$sql = "SELECT * FROM `owner` WHERE OWNER_EMAIL LIKE '%$email%' AND OWNER_PASSWORD LIKE '%$pass%'";
	$result = $conn->query($sql);

	if ($result -> num_rows >0) {
		while ($row = $result->fetch_assoc()){
		 include 'OwnerDashboard.html';
		}
	} else {
		echo "Email or Password Incorrect!";
			include 'Owner Signin.html';
	}
	?>