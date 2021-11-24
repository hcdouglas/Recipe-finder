<?php
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once('./library.php');
        $con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " .
   mysqli_connect_error());
              return null;
        }
        // Form the SQL query (a SELECT query)
        $sql="SELECT * FROM gives ORDER BY user_id";
        $result = mysqli_query($con,$sql);
        // Print the data from the table row by row
        while($row = mysqli_fetch_array($result)) {
              echo $row['user_id'];
              echo " " . $row['recipe_id'];
              echo " " . $row['contributor_id'];
              echo "<br>";
}
        mysqli_close($con);
   ?>