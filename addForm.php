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
        $ingredients = $_POST["ingredients"];
        $ID = rand(1,12000);
        $arr = explode(", ", $ingredients);
        $count = count($arr);
        $x = 0;
      $sql="INSERT INTO tab1_2 (name, id, minutes, contributor_id, submitted, n_steps, description, n_ingredients)
      VALUES
      ('$_POST[name]','".$ID."','$_POST[timeMin]','"."123"."','".date("j/n/y")."','$_POST[numSteps]','$_POST[description]', '".$count."');";
        $stmt = $con->prepare($sql);
        if(!$stmt){
           echo "Prepare failed: (". $con->errno.") ".$conn->error."<br>";
        }
        $stmt->execute();
        $stmt->store_result();

      do{
        $sql = "INSERT IGNORE INTO ingreds_tab(recipe_id, ingredient)
        VALUES ('".$ID."','".$arr[$x]."');";
        $x++;
        $stmt = $con->prepare($sql);
        $stmt->execute();
        $stmt->store_result();
      } while($x<$count);
      if (!mysqli_query($con,$sql))
        {
        die('Error: ' . mysqli_error($con));
        }
      echo "1 record added"; // Output to user
      mysqli_close($con);
   ?>