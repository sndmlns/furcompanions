<?php
// Handle AJAX POST request
if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST)) {
    // Sanitize input data
    $name = htmlspecialchars(trim($_POST['name']));
    $email = htmlspecialchars(trim($_POST['email']));
    
    // Convert reservation_date from MM/DD/YYYY to YYYY-MM-DD
    $reservation_date_str = htmlspecialchars(trim($_POST['reservation_date']));
    $reservation_date = DateTime::createFromFormat('m/d/Y', $reservation_date_str)->format('Y-m-d');

    // Convert reservation_time from hh:mm AM/PM to HH:MM:SS
    $reservation_time_str = htmlspecialchars(trim($_POST['reservation_time']));
    $reservation_time = DateTime::createFromFormat('h:i A', $reservation_time_str)->format('H:i:s');

    $service = htmlspecialchars(trim($_POST['service']));

    // Validate and insert into database (replace with your MySQL database handling)
    try {
        $pdo = new PDO('mysql:host=localhost;dbname=furcompaniondb', 'root', 'banderada12345');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare('INSERT INTO reservations (name, email, reservation_date, reservation_time, service) VALUES (:name, :email, :reservation_date, :reservation_time, :service)');
        $stmt->execute(array(
            ':name' => $name,
            ':email' => $email,
            ':reservation_date' => $reservation_date,
            ':reservation_time' => $reservation_time,
            ':service' => $service
        ));

        // Prepare JSON response
        $response = array('status' => 'success', 'message' => 'New reservation created successfully');
        echo json_encode($response);
    } catch (PDOException $e) {
        // Handle database connection error
        $response = array('status' => 'error', 'message' => 'Database error: ' . $e->getMessage());
        echo json_encode($response);
    }
} else {
    // Handle empty or invalid POST data
    $response = array('status' => 'error', 'message' => 'Invalid data received');
    echo json_encode($response);
}
?>
