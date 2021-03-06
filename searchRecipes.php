<?php
	require "index.php";
	$con = new mysqli($SERVER, $USERNAME, $PASSWORD, $DATABASE);
	$stmt = $con->stmt_init();
	
	if($stmt->prepare("select name, id, minutes,n_steps, description from ingreds_tab,tab1_2 where ingreds_tab.recipe_id = tab1_2.id AND ingreds_tab.ingredient like ?") or die(mysqli_error($con))) {
		$searchString = '%' . $_GET['searchRecipe'] . '%';
		$stmt->bind_param("s", $searchString);
		echo $_GET['searchRecipe'];
		$stmt->execute();
		$stmt->bind_result($name, $id, $minutes, $n_steps, $description);
		echo "<table border=1><th>name</th><th>id</th><th>minutes</th><th>number of steps</th><th>description</th>\n";
		while($stmt->fetch()) {
			echo "<tr><td>$name</td><td>$id</td><td>$minutes</td><td>$n_steps</td><td>$description</td></tr>";
		}
		echo "</table>";
	
		$stmt->close();
	}


?>
