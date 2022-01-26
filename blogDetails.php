<?php
include "includes/dbConnection.php";
include "includes/dbFunctions.php";
$pageTitle = "Blog Details";
include "includes/header.php";
?>

<?php
$postId = 0;

if ($_SERVER['REQUEST_METHOD'] === "POST" && isset($_POST['update'])) {
    try{
        $uTitle = $_POST['title'];
        $uTeaser = $_POST['teaser'];
        $uContent = $_POST['content'];
        $uId = $_POST['postId'];
    
        $numUpdatedRows = updateBlogPosts($conn, $uTitle , $uTeaser, $uContent, intval($uId));
        if($numUpdatedRows >0){
            header("Location: /blogDetails.php?postId=$uId");
        }
    }catch(Exception $ex){
        echo "Whoops soomething broke: ", $ex->getMessage();
    }
   

}
if ($_SERVER['REQUEST_METHOD'] === "POST" && isset($_POST['edit'])) {
    // echo "The id is:", $_POST['id'], "<br>";
    // echo "The title is:", $_POST['title'], "<br>";
    // echo "The teaser is:", $_POST['teaser'], "<br>";
    // echo "The content is:", $_POST['content'], "<br>";
    // echo "The postdate is:", $_POST['postdate'];
?>
    <form action="" method="POST">
        <p>
            <label for="title">Title</label><br>
            <input type="text" name="title" value="<?php echo $_POST['title']; ?>">
        </p>
        <p>
            <label for="teaser">Teaser</label><br>
            <input type="text" name="teaser" value="<?php echo $_POST['teaser']; ?>">
        </p>
        <p>
            <label for="content">Content</label><br>
            <textarea name="content"><?php echo $_POST['content']; ?></textarea>
        </p>
        <input type="hidden" name="postId" value="<?php echo $_POST['id']; ?>">
        <button type="submit" name="update">Update Post</button>
    </form>
<?php

} else {
    if (isset($_GET['postId'])) {
        $postId = $_GET['postId'];
    }
    $sql = "SELECT * FROM posts WHERE id  = $postId";
    $result = $conn->query($sql);
?>
    <h3>Blog Details</h3>
    <?php

    while ($row = $result->fetch_assoc()) {

        $title = $row['title'];
        $teaser = $row['teaser'];
        $content = $row['content'];
        $postDate = $row['post_date'];
        $date = date("F j, Y", strtotime($postDate));
        $time = date("g:i A", strtotime($postDate));

    ?>

        <h4>Title: <?php echo $title; ?></h4>
        <strong>Teaser: </strong> <?php echo $teaser; ?> <br>
        <strong>Content: </strong><?php echo $content; ?> <br>
        <strong>Date: </strong> <?php echo $date; ?> <br>
        <strong>Time: </strong> <?php echo $time; ?> <br>

        <form action="editBlogDetails.php" method="POST">
            <input type="hidden" name="id" value="<?php echo $postId; ?>">
            <input type="hidden" name="title" value="<?php echo $title; ?>">
            <input type="hidden" name="teaser" value="<?php echo $teaser; ?>">
            <input type="hidden" name="content" value="<?php echo $content; ?>">
            <input type="hidden" name="postdate" value="<?php echo $postDate; ?>">
            <button type="submit" name="edit">Edit Post</button>
        </form>


<?php
    }
}
?>
<?php include "includes/footer.php"; ?>