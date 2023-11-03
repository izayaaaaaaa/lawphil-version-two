<?php
  // createLaw.php
  require_once '../db.php';

  $data = json_decode(file_get_contents("php://input"));

  $query = "INSERT INTO laws (title, category, subcategory, content) VALUES (:title, :category, :subcategory, :content)";
  $stmt = $pdo->prepare($query);

  $stmt->bindParam(':title', $data->title);
  $stmt->bindParam(':category', $data->category);
  $stmt->bindParam(':subcategory', $data->subcategory);
  $stmt->bindParam(':content', $data->content);

  $response = array();

  if ($stmt->execute()) {
    $response['message'] = "Law was created.";
    http_response_code(200);
  } else {
    $response['message'] = "Unable to create law.";
    http_response_code(400);
  }

  echo json_encode($response);
?>
