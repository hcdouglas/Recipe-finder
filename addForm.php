<?php
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
include_once("./library.php"); // To connect to the database 
$con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
      // Check connection
      if (mysqli_connect_errno())
        {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        if(isset($_POST['submit'])){
      // Form the SQL query (an INSERT query)
      $sql="INSERT INTO tab1_2 (name, id, minutes, contributor_id, submitted, n_steps, description, n_ingredients)
      VALUES
      ('$_POST[name]','".rand(1,12000)."','$_POST[timeMin]','"."123"."','".date("Y/m/d")."','$_POST[numSteps]','$_POST[description]','".var_dump(count(preg_split(",", $_POST[ingredients])))."')";
      if (!mysqli_query($con,$sql))
        {
        die('Error: ' . mysqli_error($con));
        }
        else{
          echo "failed to work";
        }
      echo "1 record added"; // Output to user
      mysqli_close($con);
    }
   ?>