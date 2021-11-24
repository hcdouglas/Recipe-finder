<?php
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
include_once("./library.php"); // To connect to the database 
$con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
      // Check connection
      if (mysqli_connect_errno())
        {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
      // Form the SQL query (an INSERT query)
      $sql="INSERT INTO gives (user_id, recipe_id, contributor_id)
      VALUES
      ('$_POST[userid]','$_POST[recipeid]','$_POST[contributorid]')";
      if (!mysqli_query($con,$sql))
        {
        die('Error: ' . mysqli_error($con));
        }
      echo "1 record added"; // Output to user
      mysqli_close($con);
   ?>