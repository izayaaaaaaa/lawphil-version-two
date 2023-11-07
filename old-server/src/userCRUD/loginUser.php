<?php
// loginUser.php
session_start();
require '../db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents("php://input"));

    if (!empty($data->email) && !empty($data->password)) {
        $email = $data->email;
        $password = $data->password;

        $stmt = $pdo->prepare('SELECT * FROM users WHERE email = ?');
        $stmt->execute([$email]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            // Verify hashed password
            if (password_verify($password, $row["password"])) {
                $_SESSION['user_id'] = $row['id'];
                $_SESSION['user_name'] = $row['username'];
                $_SESSION['is_admin'] = $row['is_admin'];
                // var_dump($_SESSION);

                $response = [
                    "success" => true,
                    "id" => $row["id"],
                    "email" => $email,
                    "is_admin" => $row["is_admin"],
                ];

                session_regenerate_id(true);

                echo json_encode($response);
            } else {
                echo json_encode(["success" => false, "message" => "Invalid email or password"]);
            }
        } else {
            echo json_encode(["success" => false, "message" => "Invalid email or password"]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Email and password are required"]);
    }
} else {
    http_response_code(405);
}
?>