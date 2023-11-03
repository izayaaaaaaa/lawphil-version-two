<?php
  require_once '../db.php';

  $data = json_decode(file_get_contents("php://input"));

  $query = "UPDATE laws SET content = :content WHERE id = :id";

  try {
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':content', $data->content);
    $stmt->bindParam(':id', $data->id);

    if ($stmt->execute()) {
      http_response_code(200);
      echo json_encode(array("message" => "Law was updated."));
    } else {
      http_response_code(400);
      echo json_encode(array("message" => "Unable to update law."));
    }
  } catch (PDOException $e) {
    http_response_code(500); // Internal Server Error
    echo json_encode(["error" => "Error updating law: " . $e->getMessage()]);
  }
?>
