<?php
session_start();
 
// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('location: registration.php');
}
// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
        require_once('./library.php');
        require_once("config.php");
        require "dbutil.php";
        $db = DbUtil::loginConnection();
        $con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
        // Check connection
        if (mysqli_connect_errno()) {
              echo("Can't connect to MySQL Server. Error code: " . mysqli_connect_error());
              return null;
        }
          $username = strval($_SESSION["username"]);
                  $stmt = $db->stmt_init();

        $stmt->prepare("SELECT tab1_2.name, ratings.recipe_id, ratings.rating FROM tab1_2, ratings WHERE ratings.recipe_id = tab1_2.id AND ratings.user_id=?;") or die(mysqli_error($db));
          $stmt->bind_param("s", $username);
          $stmt->execute();
          $result = $stmt->get_result();
          $stmt->bind_result($name, $recipe_id, $rating);

          echo "<table border=1><th>name</th><th>recipe_id</th><th>rating</th>\n";
  while($row = $result->fetch_assoc()): ?>
       <tr>
          <td><?php echo $row['name']; ?></td>
           <td><?php echo $row['recipe_id']; ?></td>
            <td><?php echo $row['rating']; ?></td>
        </tr>
 <?php endwhile;

          echo "</table>";
          $stmt->close();
        mysqli_close($con);
   ?>