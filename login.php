<?php 
session_start();

// Check if the user is already logged in, if yes then redirect him to welcome page
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: welcome.php");
    exit;
}

require_once("config.php");
if(isset($_POST['submit'])){
	$username = trim($_POST['username']);
	$password = trim($_POST['password']);
	
	$sql = "select * from users where username = '".$username."'";
	$rs = mysqli_query($conn,$sql);
	$numRows = mysqli_num_rows($rs);
	
	if($numRows  == 1){
		$row = mysqli_fetch_assoc($rs);
		if(password_verify($password,$row['password'])){
			# echo "Password verified";
			session_start();
            $_SESSION["loggedin"] = true;
            $_SESSION["id"] = $id;
            $_SESSION["username"] = $username;      
            // Redirect user to welcome page
            header("location: welcome.php");
		}
		else{
			echo "Wrong Password";
		}
	}
	else{
		echo "No User found";
	}
}
?>

<h1>Login</h1>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<input type="text" name="username" value="" placeholder="Username">
	<input type="password" name="password" value="" placeholder="Password">
	<button type="submit" name="submit">Submit</submit>
</form>