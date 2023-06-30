<!DOCTYPE html>
<html>
<head>
	
	<title> New Project Request </title>
	<style>
		table , th , td , tr {
			height: 40px;
			width: 20%;
			border: 2px solid black;
			border-collapse: collapse;
			font-size: 18PX;
			padding: 5px 5px 5px 5px;

			}
		.e{
			background: lightsteelblue;
		}
	</style>
	
</head>
<body style="background:#2d3542;">
<div style=" height: 1000px ; width: 50%; 
			background: lightslategrey; margin: 100px 400px; box-shadow: 10px 10px 15px white;">

<button style="background: black; color: white; font-size:18px; height: 60px; width: 25%;" type = "submit"> <a href = "Manager Dashboard.html" style="color: whitesmoke; font-size: 20px;">Go Back</a></button>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<button style="background: black; color: white; font-size:18px; height: 60px; width: 25%;" type = "submit"> <a href = "Project Acceptation.html" style="color: whitesmoke; font-size: 20px;">Next</a></button>

	<?php echo "<h2 style='text-align: center;  color:white; font-size:30px'>New Project Request</h2>"; ?>
	<table class="e" align="center">
		<tr>
			<th>PROJECT NAME</th>
			<th>PROJECT DESCRIPTION</th>
			<th>PACKAGE</th>
			<th>REQUIREMENTS</th>
			<th>DELIVERABLES</th>
			
		</tr>
		<?php 
			include 'connect.php';
			
			$sql = "SELECT * FROM PROJECT_FORM";

			$result = $conn->query($sql);
			if ($result->num_rows>0) {
				
				while ($row = $result->fetch_assoc()) {
					
			?> 
 				<tr>

					<td><?php echo $row['P_NAME'] ?></td>
					<td><?php echo $row['P_DESCRIPTION'] ?></td>
					<td><?php echo $row['PACKAGE'] ?></td>
					<td><?php echo $row['REQUIREMENTS'] ?></td>
					<td><?php echo $row['DELIVERABLES'] ?></td>
					
				
				</tr>
				
 				 <?php
				}
			}
			else{
				echo "No Record Found.";
			}
		 ?>
	</table> </div>

</body>
</html>