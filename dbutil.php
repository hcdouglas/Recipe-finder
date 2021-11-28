<?php
class DbUtil{
	public static $loginUser = 'globaluser'; 
	public static $loginPass = 'Pm3databases';
	public static $host = "localhost:3306"; // Local Host
	public static $schema = 'ProjectMilestone2'; // Database name 
	
	public static function loginConnection(){
		$db = new mysqli(DbUtil::$host, DbUtil::$loginUser, DbUtil::$loginPass, DbUtil::$schema);
	
		if($db->connect_errno){
			echo("Could not connect to db");
			$db->close();
			exit();
		}
		
		return $db;
	}
	
}
?>
