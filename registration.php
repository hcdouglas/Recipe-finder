<?php 
require_once("index.php");
if(isset($_POST['submit'])){
		$username = $_POST['user_name'];
		$password = $_POST['password'];

		// Hash a new password for storing in the database.
		// The function automatically generates a cryptographically safe salt.
		$hashPassword = password_hash($password,PASSWORD_DEFAULT);
		
		$sql="INSERT INTO users (username, password)
		VALUES ('".$username."','".$hashPassword."')";
		$result = mysqli_query($con, $sql);
		if($result)
		{
			echo "Registration successfully";
			header("location: login.php");
			exit;
		} else {
			echo "Oops! Something went wrong. Please try again later.";
		}
	}
if(isset($_POST['haveAccount'])){
		header("location: login.php");
		exit;
}
?>

<h1>Registration</h1>
<div>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<input type="text" name="user_name" value="" placeholder="Username">
	<input type="password" name="password" value="" placeholder="Password">
	<button type="submit" name="submit">Submit</button>
</form>

<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<button id="haveAccount" name="haveAccount">Already have an account?</button>
</form>
</div>