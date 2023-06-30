<?php
	include 'connect.php';
	$email = $_POST['email'];
	$pass = $_POST['password'];

	$sql = "SELECT * FROM `project_manager` WHERE PM_EMAIL LIKE '%$email%' AND PM_PASSWORD LIKE '%$pass%'";
	$result = $conn->query($sql);

	if ($result -> num_rows >0) {
		while ($row = $result->fetch_assoc()){
		 include 'Manager Dashboard.html';
		}
	} else {
		echo "Email or Password Incorrect!";
			include 'Manger Signin.html';
	}
	?>