<?php

header("Content-Type: application/json");
error_reporting(E_ALL);


require_once 'config.php';
// Create connection
$conn = mysqli_connect($servername, $username, $password, $db_name);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}


function convertCurrency($amount, $fromCurrency, $toCurrency, $conn) {
  $fromRate = floatval($conn->query("SELECT rate FROM curr WHERE code = '$fromCurrency'")->fetch_assoc()['rate']);
  $toRate = floatval($conn->query("SELECT rate FROM curr WHERE code = '$toCurrency'")->fetch_assoc()['rate']);
  return floatval($amount) * ($fromRate / $toRate);
}

$response = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $postData = $_POST;

    if(isset($postData['price'])) {
        $amount = floatval($postData['price']);
        $fromCurrency = $postData['from'];
        $toCurrency = $postData['to'];

        $convertedAmount = convertCurrency($amount, $fromCurrency, $toCurrency, $conn);
        $response = [
            'result' => $convertedAmount,
            'to_currency' => $toCurrency
        ];
    } else {
        $response['error'] = "Invalid input, please try again with a valid amount";
    }
}

echo json_encode($response);
$conn->close();
?>

