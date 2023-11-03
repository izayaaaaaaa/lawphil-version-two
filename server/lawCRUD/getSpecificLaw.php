<?php
// getSpecificLaw.php
  require_once '../db.php';

  $lawID = $_GET['lawID'];
  $query = 'SELECT title, category, content FROM laws WHERE id = :lawID';
  
  try {
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':lawID', $lawID, PDO::PARAM_INT);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($row) {
    echo json_encode($row);
    } else {
      http_response_code(404); // Not Found
      echo json_encode([]);
    }
  } catch (PDOException $e) {
    http_response_code(500); // Internal Server Error
    echo json_encode(["error" => "Error fetching law: " . $e->getMessage()]);
  }
?>
