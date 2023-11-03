<?php
// deleteUserProfile.php
require 'db.php';

// Get the user ID and input data from the request
$inputData = json_decode(file_get_contents('php://input'), true);

try {
    // Get and sanitize the user ID
    $userId = filter_var($inputData['id'], FILTER_VALIDATE_INT);

    // Check if the user ID is valid
    if (!$userId) {
        echo json_encode(['error' => 'Invalid user ID']);
        exit;
    }

    // Prepare a SQL statement to delete the user profile based on $userId
    $stmt = $pdo->prepare("DELETE FROM users WHERE id = :userId");

    // Bind the parameters
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);

    // Execute the query
    if ($stmt->execute()) {
        // Return a success message as JSON
        echo json_encode(['success' => true]);
    } else {
        // Handle the case where the delete operation failed
        echo json_encode(['error' => 'Delete operation failed']);
    }
} catch (PDOException $e) {
    // Handle database connection and query errors
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
