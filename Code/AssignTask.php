<!DOCTYPE html>
<html>
<head>
	
	<title> Task Assign </title>
	<style>
	
		table , th , td , tr {
			height: 60px;
			width: -70px;
			 border: 2px solid black;
			border-collapse: collapse;
			font-size: 18PX;
			padding: 5px 5px;
			text-align: center;

		}
		.e{
			background: lightsteelblue;

		}
	</style>
	
</head>
<body style="background: #2d3542;">
<div style=" height: 1000px ; width: 70%; 
			background: lightslategrey; margin: 80px 250px;  box-shadow: 10px 10px 15px white;">

<?php
echo '<button style="background: black; color: white; font-size:18px; height: 60px; width: 25%;" type = "submit"> <a href = "Task Assignment.html" style="color: whitesmoke; font-size: 20px;">Go Back</a></button>';

?>
	<?php echo "<h2 style = 'text-align: center; color:white; font-size:30px'>Task Assign</h2>"; ?>
	<table class="e" align="center">
		<tr>
			<th>PROJECT NAME</th>
			<th>TASK NAME</th>
			<th>EMPLOYEE 1</th>
			<th>EMPLOYEE 2</th>
			<th>EMPLOYEE 3</th>
			<th>EMPLOYEE 4</th>
			
		</tr>
		
<?php
					$Project_Name =$_POST['Project_Name'];
					 $Task_Name = $_POST['Task_Name'];  
					 $Employee1 = $_POST['Employee1']; 
					 $Employee2= $_POST['Employee2'];  
					 $Employee3 = $_POST['Employee3']; 
					 $Employee4= $_POST['Employee4']; 

?>


				<tr>
					<td><?php  echo $Project_Name?> </td>
					<td> <?php  echo $Task_Name ?></td>
					<td>  <?php  echo $Employee1 ?></td>
					<td>  <?php  echo $Employee2 ?></td>
					<td>  <?php  echo $Employee3 ?></td>
					<td>  <?php  echo $Employee4 ?></td> 				</tr>


 				


	</table>

 </div>

</body>
</html>