<?php
// updateUserProfile.php
require 'db.php';

// Get the user ID and input data from the request
$inputData = json_decode(file_get_contents('php://input'), true);

try {
    // Validate and sanitize user input here if necessary

    // Get and sanitize the input data
    $userId = filter_var($inputData['id'], FILTER_VALIDATE_INT);
    $username = filter_var($inputData['username']);
    $email = filter_var($inputData['email'], FILTER_SANITIZE_EMAIL);

    // Check if any of the required fields are missing or invalid
    if (!$userId || !$username || !$email) {
        echo json_encode(['error' => 'Invalid or missing input data']);
        exit;
    }

    // Prepare a SQL statement to update user profile data based on $userId
    $stmt = $pdo->prepare("UPDATE users SET username = :username, email = :email WHERE id = :userId");

    // Bind the parameters
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);
    $stmt->bindParam(':username', $username, PDO::PARAM_STR);
    $stmt->bindParam(':email', $email, PDO::PARAM_STR);

    // Execute the query
    if ($stmt->execute()) {
        // Return a success message as JSON
        echo json_encode(['success' => true]);
    } else {
        // Handle the case where the update operation failed
        echo json_encode(['error' => 'Update operation failed']);
    }
} catch (PDOException $e) {
    // Handle database connection and query errors
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
