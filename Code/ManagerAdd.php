<?php 
include 'connect.php';


$pname = $_POST['project'];
$deliver = $_POST['deli'];
// $pkg = $_POST['pkg'];
$phase = $_POST['phas'];
$sdate = $_POST['sdate'];
$edate = $_POST['edate'];
$tamount = $_POST['amount'];
$pamount = $_POST['pamount'];
$progress = $_POST['prog'];
$req = $_POST['requi'];
$desc = $_POST['desc'];


$sql = "INSERT INTO PROJECT (P_NAME, P_DESCRIPTION, P_PHASE, START_DATE, END_DATE, DELIVERABLES, REQUIREMENTS, PROGRESS, TOTAL_AMOUNT, PAID_AMOUNT, PM_CNIC, O_CNIC) VALUES ('$pname', '$desc', '$phase', '$sdate', '$edate', '$deliver', '$req', '$progress', '$tamount', '$pamount', '34000-0000000-0', '34000-0000000-1') ";


if ($conn->query($sql)) {
	include 'updatePro.html';
} else {
	echo "Unable to insert Data ".$conn->error;
	include 'Project Progress Manager.html';
}
$conn->close();
?>