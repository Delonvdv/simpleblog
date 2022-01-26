<?php
$pageTitle = "Select Demo";
include "includes/dbConnection.php";
include "includes/header.php";

?>
<main>
    <form action="showSelectedBlog.php" method="POST">
        <select name="authorList">
            <option value="0"> --Select Author --</option>
        <?php
        $id = 0;
        //Check that the correct form is posted
        if(isset($_POST['author'])){
            //Check that authors list is not empty
            if(!empty($_POST['authorList'])){
                // set id from authors Value
                $id = $_POST['authorList'];
            }
        }
        $sql = "Select id, first_name, last_name from authors";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc()){
            //Check if id is the same as the cuurent id variable
            if($row['id'] == $id){
                //set the selected attribute
                $selected = " selected = 'selected'";
            }else{
                $selected = "";
            }
            echo "<option value='".$row['id']. "'".$selected.">".$row['first_name']." ". $row['last_name']."</option>";

        }
        $result->close();
        // $conn->close();
        ?>


        </select>
        <button type="submit" name="author">Find Author</button>
    </form>

    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['authorList'] != 0) {
        $userId = $_POST['authorList'];
        $sql2 = "SELECT * FROM posts WHERE author_id  = $userId ORDER BY id DESC";
        $result2 = $conn->query($sql2);
        if ($result2->num_rows > 0) {
            echo "This author has ", $result2->num_rows, " blog posts available";
        } else {
            echo "This author has not posted any blogs";
        }
        while ($row = $result2->fetch_assoc()) {

            $postId = $row['id'];
            $title = $row['title'];
            $teaser = $row['teaser'];
            $content = $row['content'];
            $postDate = $row['post_date'];
            $date = date("F j, Y", strtotime($postDate));
            $time = date("g:i A", strtotime($postDate));
    ?>
            <hr>
            <h4>Title: <?php echo $title; ?></h4>
            <strong>Teaser: </strong> <?php echo $teaser; ?> <br>
            <strong>Content: </strong><?php echo $content; ?> <br>
            <strong>Date: </strong> <?php echo $date; ?> <br>
            <strong>Time: </strong> <?php echo $time; ?> <br>
            <a href="blogDetails.php?postId=<?php echo $postId; ?>">Read More</a>

        <?php
        }
        $result2->close();
        $conn->close();
    } else {
        ?>
        <h3>No Author Selected</h3>
    <?php
    }
    ?>

</main>


<?php include "includes/footer.php"; ?>