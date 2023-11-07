<?php
  // searchKeywordLaw.php
  require_once '../db.php';

  if (isset($_GET['searchQuery'])) {
    $keyword = $_GET['searchQuery'];
    $selectedCategories = isset($_GET['selectedCategories']) ? $_GET['selectedCategories'] : [];

    $results = array();
    $table = "laws";
    $sql = "SELECT * FROM $table WHERE ";

    $params = [];

    if (!empty($selectedCategories) && !in_array('All', $selectedCategories)) {
      // Add category filtering for selected categories
      $categoryPlaceholders = implode(', ', array_fill(0, count($selectedCategories), '?'));
      $sql .= "category IN ($categoryPlaceholders) AND ";

      $params = $selectedCategories;
    }

    $sql .= "content LIKE ?";
    $params[] = "%$keyword%";    

    try {
      $stmt = $pdo->prepare($sql);
      $stmt->execute($params);

      $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

      // Return JSON result with a response code
      http_response_code(200);
      echo json_encode($results);
    } catch (PDOException $e) {
      http_response_code(500); // Internal Server Error
      echo json_encode(["error" => "Error searching laws: " . $e->getMessage()]);
    }
  } else {
    http_response_code(400); // Bad Request
    echo json_encode(['error' => 'Bad Request']);
  }
?>
