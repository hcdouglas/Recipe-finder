<?php

////////////////////////////////////////////
/** F21, PHP (on Google Standard App Engine) connect to MySQL instance (GCP) **/

$username = 'root';                      // or your username
$password = 'dbproj1234';        // or your password
$host = 'cs4750-333118:us-east4:db-project';       // projectID = cs4750, SQL instance ID = db-demo
$dbname = 'ProjectMilestone2';
$dsn = "mysql:unix_socket=/cloudsql/cs4750-333118:us-east4:db-project;dbname=ProjectMilestone2";

// to get instance connection name, go to GCP SQL overview page
////////////////////////////////////////////

/** F21, PHP (on local XAMPP) connect to MySQL instance (GCP) **/
// $username = 'root';                      // or your username
// $password = 'your-root-password';        // or your password
// $host = 'cs4750:us-east4:db-demo';       // projectID = cs4750, SQL instance ID = db-demo
// $dbname = 'guestbook';
// $dsn = "mysql:host=35.245.200.77;dbname=$dbname";       // connect PHP (XAMPP) to DB (GCP)

// to get public IP addres of the SQL instance, go to GCP SQL overview page

// To connect from a local PHP to GCP SQL instance, need to add authorized network
// to allow your machine to connect to the SQL instance. 
// 1. Get IP of the computer that will connect to the SQL instance
//    (use http://ipv4.whatismyv6.com/ to find the IP address)
// 2. On the cloud SQL connections page, add authorized networks, enter the IP address
////////////////////////////////////////////

/** F21, PHP (on local XAMPP) connect to MySQL (on local XAMPP) **/
//$username = 'hcdouglas';
//$password = 'Coolgirl1';
//$host = 'localhost:3306';
//$dbname = 'ProjectMilestone2';
//$dsn = "mysql:host=$host;dbname=$dbname";  

// Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj)
//      $SERVER = 'localhost:3306';
//      $USERNAME = 'globaluser';
//      $PASSWORD = 'Pm3databases';
//      $DATABASE = 'ProjectMilestone2';

////////////////////////////////////////////

 
/** F21, PHP (on local XAMPP) connect to MySQL (on CS server) **/
// $username = 'your-computingID'; 
// $password = 'your-password';
// $host = 'mysql01.cs.virginia.edu';
// $dbname = 'your-computingID';
// $dsn = "mysql:host=$host;dbname=$dbname";     
// 6-Oct-2021, some config seems to have changed, this dsn does not work.
//      Need to check with cshelpdesk to verify the connection.

////////////////////////////////////////////

// DSN (Data Source Name) specifies the host computer for the MySQL datbase 
// and the name of the database. If the MySQL datbase is running on the same server
// as PHP, use the localhost keyword to specify the host computer

// To connect to a MySQL database, need three arguments: 
// - specify a DSN, username, and password

// Create an instance of PDO (PHP Data Objects) which connects to a MySQL database
// (PDO defines an interface for accessing databases)
// Syntax: 
//    new PDO(dsn, username, password);


/** connect to the database **/
try 
{
   $db = new PDO($dsn, $username, $password);
   
   // dispaly a message to let us know that we are connected to the database 
   echo "<p>You are connected to the database --- Yay!!</p>";
}
catch (PDOException $e)     // handle a PDO exception (errors thrown by the PDO library)
{
   // Call a method from any object, use the object's name followed by -> and then method's name
   // All exception objects provide a getMessage() method that returns the error message 
   $error_message = $e->getMessage();        
   echo "<p>An error occurred while connecting to the database: $error_message </p>";
}
catch (Exception $e)       // handle any type of exception
{
   $error_message = $e->getMessage();
   echo "<p>Error message: $error_message </p>";
}

?>