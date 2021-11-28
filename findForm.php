<?php
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once('./library.php');
        require_once("config.php");
        $con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " .
   mysqli_connect_error());
              return null;
        }
        $steps=0;
        $mins=0;
        if(isset($_POST['easy'])){
          $steps = 1;
        }        // Form the SQL query (a SELECT query)
        if(isset($_POST['medium'])){
          $steps = 6;
        }        // Form the SQL query (a SELECT query)
        if(isset($_POST['hard'])){
          $steps = 10;
        }        // Form the SQL query (a SELECT query)
        if(isset($_POST['minutes'])){
          $mins = $_POST['minutes'];
        } 
          $ingreds = $_POST['ingreds'];
          $arr = explode(", ", $ingreds);
          $count = count($arr);
        $sql="SELECT * FROM tab1_2, ingreds_tab WHERE ingreds_tab.recipe_id = tab1_2.id AND tab1_2.n_steps BETWEEN '.$steps.' AND '.$steps.'+5 AND tab1_2.minutes BETWEEN '.$mins.'-20 AND '.$mins.'+20 AND ingreds_tab.ingredient = '.$arr[0].' AND ingreds_tab.ingredient = '.$arr[1].' + ingreds_tab.ingredient = '.$arr[2].'";
        $result = mysqli_query($con,$sql);
        // Print the data from the table row by row
        while($row = mysqli_fetch_array($result)) {
              echo $row['name'];
              echo " " . $row['minutes'];
              echo " " . $row['submitted'];
              echo " " . $row['description'];
              echo "<br>";
}
        mysqli_close($con);
   ?>