<?php
header('Content-Type: application/json');
require_once "config.php";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $db_name);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected successfully";

function fetchCurrencies($conn) {
    $currencies = [];
    $result = $conn->query("SELECT name, code FROM curr Order by name ASC");
    while ($row = $result->fetch_assoc()) {
        $currencies[] = $row;
    }
    return $currencies;
}


$currencies = fetchCurrencies($conn);
echo json_encode($currencies);


$conn->close();

?>