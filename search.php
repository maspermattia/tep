<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Risultati Ricerca CAP/Provincia</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            font-family: Arial, sans-serif;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "cap_provincia_db";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connessione fallita: " . $conn->connect_error);
    }

    $response = "";

    if(isset($_GET['param'])) {
        $param = $_GET['param'];
        $sql = "SELECT * FROM cap_provincia WHERE cap = '$param' OR provincia LIKE '%$param%'";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $response .= "<table>";
            $response .= "<tr><th>ID</th><th>Provincia</th><th>CAP</th></tr>";
            while($row = $result->fetch_assoc()) {
                $response .= "<tr>";
                $response .= "<td>" . $row['id'] . "</td>";
                $response .= "<td>" . $row['provincia'] . "</td>";
                $response .= "<td>" . $row['cap'] . "</td>";
                $response .= "</tr>";
            }
            $response .= "</table>";
        } else {
            $response = "Nessun risultato trovato.";
        }
    } else {
        $response = "Parametri mancanti.";
    }

    echo $response;

    $conn->close();
    ?>
</body>
</html>
