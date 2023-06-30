<?php


	$a = 70;

	echo "
	<style>
 body{
 	  background-image: radial-gradient(aquamarine, olive , lightblue);
 	  background-repeat: no-repeat;
 	  height: 705px;

 }
 </style>
<div class = a style = '
	 	height:  400px;
	 	width: 50%;
	 	border: 4px solid brown;
	 	margin: 200px 300px;
	 	font-size: 30px; 
	 	 padding-left:  70px;
	 	 margin-top: 200px;
	 	 border-radius: 20px;
	 	 background: #055c55;
	 	 opacity: 0.8;
	 	 color:  white;'>

<h4 style = 'text-align: center;'>Project Progress</h4>

<label style='' padding-right: 10px; font-size: 1rem;''>Current Status:</label>

<progress id='file' max='100' value = '$a' > '$a'% </progress>
$a%
<br><br><br><br>
<style>

button:hover{
	height:70px;
	width:130px;
	box-shadow: 10px 10px 15px darkblue;
	color: white;
	background: red;
}




</style>
<button class='b' type='submit' style = 'height:40px; width: 90px; background:cyan; margin-left:250px'> <a href='Customer Dashboard.html' style= 'text-decoration: none; color:black; font-size:20px;'> Back </a> </button>
	</div>
		"
;


?>