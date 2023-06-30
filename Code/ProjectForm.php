<?php

include 'connect.php';

$p_name = $_POST['project'];
$p_nofdel =$_POST['deli'];
$p_dlpkg =$_POST['pkg'];
$p_req =$_POST['requi'];
$p_des= $_POST['desc'];



$sql = "INSERT INTO `project_form`( `P_NAME`, `P_DESCRIPTION`, `PACKAGE`, `REQUIREMENTS`, `DELIVERABLES`, `PM_CNIC`) VALUES ('$p_name','$p_des','$p_dlpkg','$p_req ','$p_nofdel', '34000-0000000-0')";

if ($conn->query($sql)) {
# code...
	include 'sendpro.html';
}
else{
echo "Unable to insert data ".$conn->error;
	include 'projectform.html';
}
$conn->close();

 ?>