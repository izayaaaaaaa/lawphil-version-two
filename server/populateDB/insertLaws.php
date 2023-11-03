<?php
  // insertLaws.php
  // Insert 50 laws (Run only once, upon db creation)
  require 'db.php'; // Assuming you have a file named db.php that establishes the database connection

  // Function to insert a law
  function insertLaw($title, $category, $content, $pdo) {
    // Prepare and execute the SQL statement
    $stmt = $pdo->prepare("INSERT INTO laws (title, category, content) VALUES (:title, :category, :content)");
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':category', $category);
    $stmt->bindParam(':content', $content);

    if ($stmt->execute()) {
      echo "Law inserted successfully<br>";
    } else {
      echo "Error inserting law: " . $stmt->errorInfo()[2] . "<br>";
    }
  }

  for ($i = 1; $i <= 50; $i++) {
    $title = "Law " . $i;
    $category = "Category " . chr(65 + ($i % 3)); // Generates categories A, B, and C in a repeating pattern
    $content = "Content of Law " . $i;

    insertLaw($title, $category, $content, $pdo);
  }

  echo "Laws insertion done!";
?>
