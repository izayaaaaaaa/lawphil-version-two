<?php
require 'db.php';

// Get the user ID from the request (assuming it's sent as a parameter)
$userId = $_GET['userId']; // You can also use $_POST if it's a POST request

try {
  // Prepare a SQL statement to fetch user profile data based on $userId
  $stmt = $pdo->prepare("SELECT username, email FROM users WHERE id = :userId");

  // Bind the parameter
  $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);

  // Execute the query
  $stmt->execute();

  // Fetch the user data as an associative array
  $userData = $stmt->fetch(PDO::FETCH_ASSOC);

  // Return the user data as JSON
  echo json_encode($userData);
} catch (PDOException $e) {
  echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
