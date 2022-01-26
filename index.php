<?php 
    include "includes/dbConnection.php";
    $pageTitle = "Home";
    include "includes/header.php";
?>

        <?php
         
        $sql = "SELECT * FROM posts";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $time = strtotime($row['post_date']);
                echo "Title: " . $row['title'] . " <span>" . date("d-m-Y", $time ) . "</span>" .
                    "<br>Teaser: " . $row['teaser'] .
                    "<br>Content: " . $row['content'] . "<br><hr>";
            }
        }
        ?>
<?php include "includes/footer.php"; ?>