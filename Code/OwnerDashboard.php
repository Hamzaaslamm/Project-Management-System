<!DOCTYPE html>
<html>
<head>
	
	<title> Owner Dasboard </title>
	<style>

		body{
			background-color: grey;
			text-align: center;
		}

		.Pay_List{
			
		}

		.pro_details{

		}
		

	</style>
</head>
<body>
<div class="Pay_List">
	<?php echo "<h2>Payment List</h2>"; ?>
	<table class="table table-bordered table-dark">
		<tr>
			<th>PROJECT_ID</th>
			<th>TOTAL_AMOUNT</th>
			<th>PAID_AMOUNT</th>
			
		</tr>
		<?php 
			include 'connect.php';
			
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
		
	</table> </div>

<!-- -------------------------Project Details------------------------- -->
<div class="pro_details">
<table class="table table-bordered table-dark">
		<tr>
			<th>PROJECT_ID</th>
			<th>PROJECT_PHASE</th>
			<th>START_DATE</th>
			<th>END_DATE</th>
			<th>PROGRESS</th>
			
		</tr>
		<?php 
			include 'connect.php';
			
			$result = $conn->query($sql);
			if ($result->num_rows>0) {
				
				while ($row = $result->fetch_assoc()) {
					
			?>
				<tr>

					<td><?php echo $row['P_ID'] ?></td>
					<td><?php echo $row['P_PHASE'] ?></td>
					<td><?php echo $row['START_DATE'] ?></td>
					<td><?php echo $row['END_DATE'] ?></td>
					<td><?php echo $row['PROGRESS'] ?></td>

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