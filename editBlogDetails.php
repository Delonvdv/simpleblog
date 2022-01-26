<?php
$pageTitle = "Select Demo";
include "includes/dbConnection.php";
include "includes/dbFunctions.php";
include "includes/header.php";

if ($_SERVER['REQUEST_METHOD'] === "POST" && isset($_POST['edit'])) {
    echo "The id is:", $_POST['id'], "<br>";
    
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

}

if ($_SERVER['REQUEST_METHOD'] === "POST" && isset($_POST['update'])) {
    try{
        $uTitle = $_POST['title'];
        $uTeaser = $_POST['teaser'];
        $uContent = $_POST['content'];
        $uId = $_POST['postId'];
    
        $numUpdatedRows = updateBlogPosts($conn, $uTitle , $uTeaser, $uContent, intval($_POST['postId']));
        if($numUpdatedRows >0){
            header("Location: /blogDetails.php?postId=$uId");
        }
    }catch(Exception $ex){
        echo "Whoops soomething broke: ", $ex->getMessage();
    }
   

}

?>
<main>


</main>


<?php include "includes/footer.php"; ?>