<?php
switch (@parse_url($_SERVER['REQUEST_URI'])['path']) {    
    case '/':                   // URL (without file name) to a default screen
        require 'registration.php';
        break;  
    case '/registration.php':
        require 'registration.php';
        break;     
   case '/contact.php':
      require 'contact.php';
      break;
   case '/addForm.php':
      require 'addForm.php';
      break;
    case '/findForm.php':
        require 'findForm.php';
        break;
    case '/library.php':
        require 'library.php';
        break;
    case '/login.php':
        require 'login.php';
        break;
    case '/main.php':
        require 'main.php';
        break;
    case '/trial.php':
        require 'trial.php';
        break;
    case '/trialSelect.php':
        require 'trialSelect.php';
        break;
    case '/untitled.php':
        require 'untitled.php';
        break;
    case '/welcome.php':
        require 'welcome.php';
        break;
    case '/index.php':
        require 'index.php';
        break; 
   default:
      http_response_code(404);
      exit('Not Found');
}  
?>