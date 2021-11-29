<?php
session_start();

// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
include_once("./index.php"); 
 
// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('location: registration.php');
}
      // Check connection
      if (mysqli_connect_errno())
        {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
    $username = $_SESSION["username"];

      // Form the SQL query (an INSERT query)
    $recipe_id_add = $_GET["recipe_id_add"];
    $rating = $_GET['Rating']; 
		if($rating=='1'){
			$rating = 1; 
		}
		else if($rating=='2'){
			$rating = 2; 
		}
		else if($rating=='3'){
			$rating = 3; 
		}
		else if($rating=='4'){
			$rating = 4; 
		}
		else{
			$rating = 5; 
		}
        $sql="INSERT INTO ratings (user_id, recipe_id, submitted, rating, review)
        VALUES
        ('".$username."', '".$recipe_id_add."', '".date("j/n/y")."','".$rating."','$_GET[review_add]');";
          if (!mysqli_query($con,$sql))
        {
        die('Error: ' . mysqli_error($con));
        }
          echo "1 record added"; // Output to user
          mysqli_close($con);
?>