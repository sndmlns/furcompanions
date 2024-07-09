<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "banderada12345";
$dbname = "FurCompanionDB";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$name = $_POST['name'];
$email = $_POST['email'];

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO newsletter_subscribers (name, email) VALUES (?, ?)");
$stmt->bind_param("ss", $name, $email);

try {
    // Execute the statement
    $stmt->execute();
    // If successful, redirect with a success message
    echo "<div style='color: green;'>You have successfully subscribed to our newsletter.</div>";
} catch (mysqli_sql_exception $e) {
    // Check if the error is a duplicate entry error
    if ($e->getCode() == 1062) {
        echo "<div style='color: red;'>This email is already subscribed.</div>";
    } else {
        // Other errors
        echo "<div style='color: red;'>Error: " . $e->getMessage() . "</div>";
    }
}

$stmt->close();
$conn->close();
?>
