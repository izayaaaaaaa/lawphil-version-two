<?php
// registerUser.php
require '../db.php';

header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $requestData = json_decode(file_get_contents("php://input"));

    if (isset($requestData->username) && isset($requestData->email) && isset($requestData->password)) {
        $username = $requestData->username;
        $email = $requestData->email;
        $password = password_hash($requestData->password, PASSWORD_DEFAULT);

        $sql = 'INSERT INTO users (username, email, password) VALUES (?, ?, ?)';
        $stmt = $pdo->prepare($sql);
        if ($stmt->execute([$username, $email, $password])) {
            echo json_encode(['success' => true, 'message' => 'Registration successful']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Registration failed']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Missing required data']);
    }
} else {
    http_response_code(405);
}
?>