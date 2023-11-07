<?php
// getLawsByCategory.php
  require_once '../db.php';

  // Get the category from the query parameter
  $category = $_GET['category'];

  // Prepare a SQL query to fetch laws and subcategories based on the category
  $sql = "SELECT id, title, subcategory FROM laws WHERE category = :category";

  try {
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':category', $category, PDO::PARAM_STR);
    $stmt->execute();
    $laws = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Return the laws as a JSON response
    header('Content-Type: application/json');
    echo json_encode($laws);
  } catch (PDOException $e) {
    http_response_code(500); // Internal Server Error
    echo json_encode(["error" => "Error fetching laws: " . $e->getMessage()]);
  }
?>
