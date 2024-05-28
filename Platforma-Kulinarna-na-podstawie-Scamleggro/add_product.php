<?php
include "db_connection.php";


if (isset($_POST['name']) && isset($_POST['description']) && isset($_FILES['image'])) {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $image = $_FILES['image']['name'];

  
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);

 
    $check = getimagesize($_FILES["image"]["tmp_name"]);
    if ($check !== false) {
     
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
           
            $sql = "INSERT INTO product (name, description, image) VALUES ('$name', '$description', '$image')";
            if ($conn->query($sql) === TRUE) {
                echo "Przepis został dodany pomyślnie.";
            } else {
                echo "Błąd: " . $sql . "<br>" . $conn->error;
            }
        } else {
            echo "Wystąpił błąd podczas przesyłania pliku.";
        }
    } else {
        echo "Plik nie jest obrazem.";
    }
} else {
    echo "Proszę wypełnić wszystkie pola formularza.";
}

$conn->close();
?>
