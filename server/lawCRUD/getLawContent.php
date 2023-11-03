<?php
// getLawContent.php
  header("Content-Type: application/json; charset=UTF-8");

  require_once '../db.php';

  $law_id = $_GET['lawID'];

  try {
    $stmt = $pdo->prepare("SELECT content FROM laws WHERE id = :law_id");
    $stmt->bindParam(':law_id', $law_id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      echo json_encode($row);
    } else {
        http_response_code(404); // Not Found
        echo json_encode([]);
      }
  } catch (PDOException $e) {
    http_response_code(500); // Internal Server Error
    echo json_encode(["error" => $e->getMessage()]);
  }
?>