<?php
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
include_once("./index.php"); // To connect to the database 
session_start();
 
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
        if(isset($_SESSION['username'])){
          $username = $_SESSION["username"];
        }

      // Form the SQL query (an INSERT query)
        $ingreds = $_POST['ingreds'];
        $ID = rand(1,12000);
        $arr = explode(", ", $ingreds);
        $count = count($arr);
        $x = 0;
      $sql="INSERT INTO tab1_2 (name, id, minutes, contributor_id, submitted, n_steps, description, n_ingredients)
      VALUES
      ('$_POST[name]','".$ID."','$_POST[timeMin]','".$username."','".date("j/n/y")."','$_POST[numSteps]','$_POST[description]', '".$count."');";
        $stmt = $con->prepare($sql);
        if(!$stmt){
           echo "Prepare failed: (". $con->errno.") ".$con->error."<br>";
        }
        else{
          $stmt->execute();
          $stmt->store_result();
          echo $ID;
          echo $username; 
        }
      do{
        $sql = "INSERT IGNORE INTO ingreds_tab(recipe_id, ingredient)
        VALUES ('".$ID."','".$arr[$x]."');";
        $x++;
        $stmt = $con->prepare($sql);
        if(!$stmt){
           echo "Prepare failed: (". $con->errno.") ".$con->error."<br>";
        }
        else{
          $stmt->execute();
          $stmt->store_result();
        }
      } while($x<$count);
      if (!mysqli_query($con,$sql))
        {
        die('Error: ' . mysqli_error($con));
        }
      echo "1 record added"; // Output to user
      mysqli_close($con);
   ?>