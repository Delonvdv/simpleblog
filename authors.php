<?php 
    include "includes/dbConnection.php";
    $pageTitle = "Authors";
    include "includes/header.php";
?>

        <?php

        $sql = "SELECT * FROM authors";

        $result = $conn->query($sql);
        ?> 
        <h3>List of Authors</h3>
        <?php

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "ID: " . $row['id'] . " " . $row['first_name'] . " " . $row['last_name'] . "<br>"
                    . "Email: " . $row['email'] . " Added: " . $row['added_on'] . "<br><hr>";
            }
        }
        ?>
<?php include "includes/footer.php"; ?>