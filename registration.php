<?php 
require_once("config.php");
if(isset($_POST['submit'])){
		$username = $_POST['user_name'];
		$password = $_POST['password'];

		// Hash a new password for storing in the database.
		// The function automatically generates a cryptographically safe salt.
		$hashPassword = password_hash($password,PASSWORD_DEFAULT);
		
		//$sql = "insert into users (first_name, password) value('".$username."' ,'".$hashPassword."')";
		$sql="INSERT INTO users (username, password)
		VALUES
      ('".$username."','".$hashPassword."')";
		$result = mysqli_query($conn, $sql);
		if($result)
		{
			echo "Registration successfully";
			header("location: login.php");
		} else {
			echo "Oops! Something went wrong. Please try again later.";
		}
	}
	if(isset($_POST['submit'])){
		header("location: login.php");
	}
?>

<h1>Registration</h1>
<div>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<input type="text" name="user_name" value="" placeholder="Username">
	<input type="password" name="password" value="" placeholder="Password">
	<button type="submit" name="submit">Submit</button>
</form>
</div>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
		<button id="haveAccount" name="haveAccount">Already have an account?</button>
	</form>

