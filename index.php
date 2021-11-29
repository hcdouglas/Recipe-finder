<?php
//Get Heroku ClearDB connection information
$cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
$SERVER = $cleardb_url["host"];
$USERNAME = $cleardb_url["user"];
$PASSWORD = $cleardb_url["pass"];
$DATABASE = substr($cleardb_url["path"],1);
$active_group = 'default';
$query_builder = TRUE;
// Connect to DB
$con = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);
?>