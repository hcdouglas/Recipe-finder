<?php
session_start();
 
// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('location: registration.php');
}
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once('./index.php');
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " . mysqli_connect_error());
              return null;
        }
          $username = strval($_SESSION["username"]);
                  $stmt = $con->stmt_init();

        $stmt->prepare("SELECT name,minutes,n_steps,description FROM tab1_2 WHERE contributor_id=? ORDER BY minutes;") or die(mysqli_error($db));
          $stmt->bind_param("s", $username);
          $stmt->execute();
          $result = $stmt->get_result();
          $row = $result->fetch_assoc(); // or while (...)
          $stmt->bind_result($name, $minutes, $n_steps, $description);
          
          echo "<table border=1><th>name</th><th>minutes</th><th>number of steps</th><th>description</th>\n";
          
  while($row = $result->fetch_assoc()): ?>
       <tr>
          <td><?php echo $row['name']; ?></td>
           <td><?php echo $row['minutes']; ?></td>
          <td><?php echo $row['n_steps']; ?></td>
          <td><?php echo $row['description']; ?></td>
        </tr>
 <?php endwhile;

          echo "</table>";
          $stmt->close();
        mysqli_close($con);
   ?>