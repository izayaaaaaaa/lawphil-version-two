<?php
  // insertUsers.php
  // Insert 25 users with hashed passwords (Run only once, upon db)
  require 'db.php';

  // Function to insert a user with a hashed password
  function insertUser($username, $email, $password, $pdo) {
    // Hash the password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
    // Prepare and execute the SQL statement
    $stmt = $pdo->prepare("INSERT INTO users (username, email, password) VALUES (:username, :email, :password)");
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $hashedPassword);

    if ($stmt->execute()) {
        echo "User inserted successfully<br>";
    } else {
        echo "Error inserting user: " . $stmt->errorInfo()[2] . "<br>";
    }
  }

  for ($i = 1; $i <= 25; $i++) {
    $username = "user" . $i;
    $email = "user" . $i . "@example.com";
    $password = "password" . $i;
    
    insertUser($username, $email, $password, $pdo);
  }

  echo "insertion done!";
?>
