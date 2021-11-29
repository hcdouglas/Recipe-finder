<?php
	include('index.php');
	$stmt = $con->stmt_init();
	
	if($stmt->prepare("select name, minutes,n_steps, description from ingreds_tab,tab1_2 where ingreds_tab.recipe_id = tab1_2.id AND ingreds_tab.ingredient like ?") or die(mysqli_error($db))) {
		$searchString = '%' . $_GET['searchRecipe'] . '%';
		$stmt->bind_param("s", $searchString);
		$stmt->execute();
		$stmt->bind_result($name, $minutes, $n_steps, $description);
		echo "<table border=1><th>name</th><th>minutes</th><th>number of steps</th><th>description</th>\n";
		while($stmt->fetch()) {
			echo "<tr><td>$name</td><td>$minutes</td><td>$n_steps</td><td>$description</td></tr>";
		}
		echo "</table>";
	
		$stmt->close();
	}


?>
