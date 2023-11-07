<?php 
  session_start();
  require '../db.php';
  
  // var_dump($_SESSION);
  
  if (isset($_SESSION['user_id'])) {

    $response = [
      "loggedIn" => true,
      "userId" => $_SESSION["user_id"],
      "userName" => $_SESSION["user_name"],
      "userRole" => $_SESSION["user_role"]
    ];
    
  } else {
    // User is not authenticated
    $response['loggedIn'] = false;
  }

  header('Content-Type: application/json');
  echo json_encode($response);
?>