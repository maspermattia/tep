<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cap_provincia_db";


$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

$response = array();


if(isset($_POST['param1']) && isset($_POST['param2'])) {
   
    $new_cap = mysqli_real_escape_string($conn, $_POST['param1']);
    $new_provincia = mysqli_real_escape_string($conn, $_POST['param2']);

    
    $sql = "INSERT INTO cap_provincia (cap, provincia) VALUES ('$new_cap', '$new_provincia')";
    if ($conn->query($sql) === TRUE) {
        $response['message'] = "Record aggiunto con successo.";
    } else {
        $response['success'] = false;
        $response['message'] = "Errore nell'aggiunta del record: " . $conn->error;
    }
} else {
    $response['success'] = false;
    $response['message'] = "Parametri mancanti.";
}


header('Content-Type: application/json');
echo json_encode($response);


$conn->close();
?>
