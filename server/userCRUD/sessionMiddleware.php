<?php
// session_middleware.php
session_start();
if (!isset($_SESSION['user_id'])) {
    // Not authenticated.
    http_response_code(401);
    echo json_encode(array("error" => "Not authorized"));
    exit();
}
?>