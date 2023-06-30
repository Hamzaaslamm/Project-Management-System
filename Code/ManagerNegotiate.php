<?php 
include 'connect.php';

$pname = $_POST['project'];
$deliver = $_POST['deli'];
$pakcage = $_POST['pkg'];
$req = $_POST['requi'];
$desc = $_POST['desc'];


$sql = "INSERT INTO PROJECT_FORM (P_NAME, P_DESCRIPTION, PACKAGE, REQUIREMENTS, DELIVERABLES, PM_CNIC) VALUES ('$pname', '$desc', '$pakcage', '$req', '$deliver',  '34000-0000000-0') ";


if ($conn->query($sql)) {
	include 'Send.html';
} else {
	echo "Unable to insert Data ".$conn->error;
	include 'Negotiation.html';
}
$conn->close();
?>