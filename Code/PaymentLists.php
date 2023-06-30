<!DOCTYPE html>
<html>
<head>
	
	<title> Owner Dasboard </title>
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
<body style="background: #2d3542;">
<div style=" height: 1000px ; width: 50%; 
			background: lightslategrey; margin: 100px 400px;  box-shadow: 10px 10px 15px white;">

<?php
echo '<button style="background: black; color: white; font-size:18px; height: 60px; width: 25%;" type = "submit"> <a href = "OwnerDashboard.html" style="color: whitesmoke; font-size: 20px;">Go Back</a></button>';
?>
	<?php echo "<h2 style = 'text-align: center; color:white; font-size:30px'>Payment List</h2>"; ?>
	<table class="e" align="center">
		<tr>
			<th>PROJECT_ID</th>
			<th>TOTAL_AMOUNT</th>
			<th>PAID_AMOUNT</th>
			
		</tr>
 		<?php 
			include 'connect.php';

	$sql = "SELECT * FROM `PROJECT`";
			
			$result = $conn->query($sql);
			if ($result->num_rows>0) {
				
				while ($row = $result->fetch_assoc()) {
					
			?> 
				<tr>

					<td><?php echo $row['P_ID'] ?></td>
					<td><?php echo $row['TOTAL_AMOUNT'] ?></td>
					<td><?php echo $row['PAID_AMOUNT'] ?></td>
				
				</tr>
				
 				 <?php
				}
			}
			else{
				echo "No Record Found.";
			}
		 ?>


	</table>

 </div>

</body>
</html>