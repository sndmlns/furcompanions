<?php
$servername = "127.0.0.1";
$username = "root";
$password = "banderada12345";
$dbname = "furcompaniondb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];

$sql = "INSERT INTO contactmessages (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";

if ($conn->query($sql) === TRUE) {
    echo '<div class="alert alert-success">Message sent successfully!</div>';
} else {
    echo '<div class="alert alert-danger">Error: ' . $sql . '<br>' . $conn->error . '</div>';
}

$conn->close();
?>
