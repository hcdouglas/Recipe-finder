<?php 
// require_once("library.php");
switch (@parse_url($_SERVER['REQUEST_URI'])['path']) {    
    case '/':                   // URL (without file name) to a default screen
        require 'registration.php';
        echo @parse_url($_SERVER['REQUEST_URI'])['path'];
        echo "Case 1";
        break;  
    case '/registration.php':
        require 'registration.php';
        echo @parse_url($_SERVER['REQUEST_URI'])['path'];
        echo "Case 2";
        break;
    case '/login.php':
        require 'login.php';
        echo @parse_url($_SERVER['REQUEST_URI'])['path'];
        echo "Case 3";
        break;
    case '/main.php':
        require 'main.php';
        echo @parse_url($_SERVER['REQUEST_URI'])['path'];
        echo "Case 4";
        break;
   default:
      echo @parse_url($_SERVER['REQUEST_URI'])['path'];
      echo "Case 6";
      http_response_code(404);
      exit('Not Found');
}  
?>