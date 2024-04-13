<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client REST</title>
    <style>
       body{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: serif;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #response {
            margin-top: 20px;
            white-space: pre-wrap; 
            
        } table {
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
    <div class="container">
        <h2>Client REST</h2>
        <label for="url">URL:</label>
        <input type="text" id="url" placeholder="Inserisci l'URL">
        <button onclick="makeRequest('GET')" id="getButton">GET</button>
        <button onclick="makeRequest('POST')" id="postButton">POST</button>
        <button onclick="makeRequest('PUT')" id="putButton">PUT</button>
        <button onclick="makeRequest('DELETE')" id="deleteButton">DELETE</button>
        <div id="response"></div>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "cap_provincia_db";
    
        $conn = new mysqli($servername, $username, $password, $dbname);
    
        if ($conn->connect_error) {
            die("Connessione fallita: " . $conn->connect_error);
        }
    
        $sql = "SELECT * FROM cap_provincia";
        $result = $conn->query($sql);
    
        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>ID</th><th>CAP</th><th>Provincia</th></tr>";
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row['id']."</td>";
                echo "<td>".$row['cap']."</td>";
                echo "<td>".$row['provincia']."</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "Nessun risultato trovato.";
        }
    
        $conn->close();
        ?>
   
    </div>

    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
        async function makeRequest(method) {
            const url = document.getElementById('url').value;
            let responseData;

            try {
                switch (method) {
                    case 'GET':
                        responseData = await getRequest(url);
                        break;
                    case 'POST':
                        const postData = { key: 'value' }; 
                        responseData = await postRequest(url, postData);
                        break;
                    case 'PUT':
                        const newCap = document.getElementById('newCap').value;
                        const newProvincia = document.getElementById('newProvincia').value;
                        responseData = await putData(url, { param1: newCap, param2: newProvincia });
                        break;
                    case 'DELETE':
                        responseData = await deleteRequest(url);
                        break;
                    default:
                        console.error('Metodo non supportato');
                        return;
                }
                displayResponse(responseData);
            } catch (error) {
                displayResponse({ error: error.message });
            }
        }

        async function getRequest(url) {
            try {
                const response = await axios.get(url);
                return response.data;
            } catch (error) {
                throw new Error(`Errore durante la richiesta GET: ${error.message}`);
            }
        }

        async function postRequest(url, data) {
            try {
                const response = await axios.post(url, data);
                return response.data;
            } catch (error) {
                throw new Error(`Errore durante la richiesta POST: ${error.message}`);
            }
        }

        async function putData(url, data) {
            try {
                const response = await axios.put(url, data);
                return response.data;
            } catch (error) {
                throw new Error(`Errore durante la richiesta PUT: ${error.message}`);
            }
        }

        async function deleteRequest(url) {
            try {
                const response = await axios.delete(url);
                return response.data;
            } catch (error) {
                throw new Error(`Errore durante la richiesta DELETE: ${error.message}`);
            }
        }

        function displayResponse(data) {
            const responseDiv = document.getElementById('response');
            if (data && data.error) {
                responseDiv.innerHTML = `<div style="color: red;">Errore: ${data.error}</div>`;
            } else {
                responseDiv.innerHTML = data;
            }
        }
    </script>
</body>
</html>
