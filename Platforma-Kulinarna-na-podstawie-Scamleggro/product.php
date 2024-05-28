<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Szczegóły Produktu</title>
</head>
<body>
    <header class="flex-container topnav">
        <img src="img/logo.png" alt="logo" id="logo">
    </header>
    <main>
        <?php
        include "db_connection.php";

        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $sql = "SELECT name, description, image FROM product WHERE id = $id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                echo '<div class="product-details">';
                echo '<div class="product-image">';
                echo '<img src="uploads/' . $row['image'] . '" alt="' . $row['name'] . '">';
                echo '</div>';
                echo '<div class="product-info">';
                echo '<h1>' . $row['name'] . '</h1>';
                echo '<p>Przepis: ' . $row['description'] . '</p>';
                echo '</div>';
                echo '</div>';
            } else {
                echo "Produkt nie został znaleziony.";
            }
        } else {
            echo "Nieprawidłowe ID produktu.";
        }
        $conn->close();
        ?>
    </main>
</body>
</html>
