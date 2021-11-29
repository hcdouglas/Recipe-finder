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
		
		    $recipe_id_update = $_GET["recipe_id_update"];
		    $rating = $_GET["Rating1"]; 
				if($rating=='1'){
					$rating = 1; 
				}
				else if($rating=='2'){
					$rating = 2; 
				}
				else if($rating=='3'){
					$rating = 3; 
				}
				else if($rating=='4'){
					$rating = 4; 
				}
				else{
					$rating = 5; 
				}

		$review = $_GET['review_update'];
        $stmt->prepare("UPDATE ratings SET rating=?, review=? WHERE recipe_id=? AND user_id=?;") or die(mysqli_error($db));
          $stmt->bind_param("ssss", $rating, $review, $recipe_id_update, $username);
          $stmt->execute();
?>
