<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once('./index.php');
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " .
   mysqli_connect_error());
              return null;
        }
        $mins = $_GET['time'];
        $steps = $_GET["difficulty"];
        $n_steps=0;
        $n_mins=0;
        if($steps=="easy"){
          $n_steps=1;
        }
        else if($steps=="medium"){
          $n_steps=6;
        }
        else{
          $n_steps=10;
        }
        if($mins=="quick"){
          $n_mins=0;
        }
        else if($mins=="med"){
          $n_mins=20;
        }
        else{
          $n_mins=50;
        }
        $stmt = $con->stmt_init();

        $n_stepsL = (int) $n_steps-5;
        if($n_stepsL < 0){
          $n_stepsL=0;
        }
        $n_stepsU = (int) $n_steps+5;
        $n_minsL=(int) $n_mins-20;
        if($n_minsL < 0){
          $n_minsL=0;
        }
        $n_minsU=(int) $n_mins+20;
      $stmt=$con->prepare("SELECT * FROM tab1_2 WHERE n_steps >=? AND n_steps <=? AND minutes>=? AND minutes <=? ORDER BY minutes, n_steps;");
      $stmt->bind_param("iiii", $n_stepsL, $n_stepsU, $n_minsL, $n_minsU);
      $stmt->execute();
      $result = $stmt->get_result();
      $row = $result->fetch_assoc();
        // Print the data from the table row by row
                 echo "<table border=1><th>name</th><th>minutes</th><th>number of steps</th><th>description</th>\n";
  while($row = $result->fetch_assoc()): ?>
       <tr>
          <td><?php echo $row['name']; ?></td>
           <td><?php echo $row['minutes']; ?></td>
          <td><?php echo $row['n_steps']; ?></td>
          <td><?php echo $row['description']; ?></td>
        </tr>
 <?php endwhile;
        mysqli_close($con);
   ?>