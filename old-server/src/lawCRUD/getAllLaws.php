<?php
  require_once '../db.php';

  $query = "SELECT * FROM laws";

  $stmt = $pdo->prepare($query);
  $stmt->execute();

  $data = array();
  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    extract($row);
    $item = array(
      'id' => $id,
      'title' => $title,
      'category' => $category,
      'content' => $content
    );
    array_push($data, $item);
  }

  http_response_code(200);
  echo json_encode($data);
