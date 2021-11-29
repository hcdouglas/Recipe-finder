<?php
session_start();
 
// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('location: registration.php');
}
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once("./index.php");  
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " . mysqli_connect_error());
              return null;
        }
        $username = strval($_SESSION["username"]);
        $recipeToDelete = strval($_POST["recipeDelete"]);
                  $stmt = $con->stmt_init();

        $stmt->prepare("DELETE FROM tab1_2 WHERE name=? AND contributor_id=?;") or die(mysqli_error($db));
          $stmt->bind_param("ss", $recipeToDelete, $username);
          $stmt->execute();
          
          $stmt->close();
        mysqli_close($con);
   ?>