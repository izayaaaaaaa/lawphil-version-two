<?php
// The code you provided is written in PHP and it sets up a connection to a MySQL database. 
  header("Access-Control-Allow-Origin: http://localhost:3000");
  header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
  header("Access-Control-Allow-Headers: Content-Type");
  header("Access-Control-Allow-Credentials: true");

  if ($_SERVER["REQUEST_METHOD"] === "OPTIONS") {
    http_response_code(200);
    exit;
  }

  $hostname = '192.168.100.27';
  $username = 'luxemburg';
  $password = 'izaya';
  $dbname = 'lawdb';
  $port = 3306;

  try {
    $pdo = new PDO("mysql:host=$hostname;port=$port;dbname=$dbname;charset=utf8mb4", $username, $password, [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
      PDO::ATTR_EMULATE_PREPARES => false,
    ]);
    // echo("Connection successful.\n");
  } catch (PDOException $e) {
    http_response_code(500); // Internal Server Error
    echo "Connection to database failed: " . $e->getMessage();
    exit;
  }
?>