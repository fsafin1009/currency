<?php 
require_once "config.php";
// Create connection

$url = "https://www.cbr.ru/scripts/XML_daily.asp?data_req=" . date('d/m/Y');

$conn = mysqli_connect($servername, $username, $password, $db_name);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

// // insert into database 
$reader = new XMLReader();
$reader->open($url);



while ($reader->read()) {
    if ($reader->nodeType == XMLReader::ELEMENT && $reader->name == 'Valute') {
        $code = '';
        $name = '';
        $rate = '';
        while ($reader->read()) {
            if ($reader->nodeType == XMLReader::ELEMENT) {
                switch ($reader->name) {
                    case 'CharCode':
                        $code = $reader->readString();
                        break;
                    case 'Name':
                        $name = $reader->readString();
                        break;
                    case 'Value':
                        $rate = $reader->readString();
                        break;
                }
            }
            if ($reader->nodeType == XMLReader::END_ELEMENT && $reader->name == 'Valute') {
                mysqli_query($conn, "INSERT INTO curr (code, name, rate) VALUES ('$code', '$name', '$rate')");
                break;
            }
        }
    }
}
echo "<br>";
print "Parsing  data... Done";

// close connection
mysqli_close($conn);

?>