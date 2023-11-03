<?php

  require_once '../db.php';

  $id = $_GET['id'];

  $query = "DELETE FROM laws WHERE id=:id";

  $stmt = $pdo->prepare($query);
  $stmt->bindParam(':id', $id);

  if ($stmt->execute()) {
    http_response_code(200);
    echo json_encode(array("message" => "Law was deleted."));
  } else {
    http_response_code(400);
    echo json_encode(array("message" => "Unable to delete law."));
  }
