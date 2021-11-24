<?php 
$conn = mysqli_connect("localhost:3306","root","","ProjectMilestone2");

if(!$conn){
	die("Connection error: " . mysqli_connect_error());	
}
?>
