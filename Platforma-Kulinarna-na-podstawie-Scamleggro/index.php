<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Strona kulinarna</title>
</head>
<body>
    <header class="flex-container topnav">
        <img src="img/logo.png" alt="logo" id="logo">
        <div>
            <a href="login.html">Dodaj przepis</a>
        </div>
    </header>

    <main class="flex-container-wrap">
        <?php
        include "db_connection.php";

        $sql = "SELECT * FROM product";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                if (isset($row["ID"])) {
                    echo "<a href='product.php?id=" . $row["ID"] . "' class='card'>";
                    echo "<div class='card-image' style='background-image: url(uploads/" . $row["image"] . ");'></div>";
                    echo "<div class='card-text'>";
                    echo "<h3>" . $row["name"] . "</h3>";
                    echo "</div>";
                    echo "</a>";
                } else {
                    echo "<p>Błąd: produkt nie zawiera 'ID'.</p>";
                }
            }
        } else {
            echo "<p>Brak produktów</p>";
        }

        $conn->close();
        ?>
    </main>
</body>
</html>
