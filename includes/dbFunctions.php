<?php

function updateBlogPosts($conn, $title, $teaser, $content, $id)
{

    $sql = "UPDATE posts SET title=?, teaser=?, content=? WHERE id=?";

    $stmt = $conn->prepare($sql) or die("Problem with Query");
    $id = $id;
    $stmt->bind_param('sssi', $title, $teaser, $content, $id);
    $stmt->execute();

    return $stmt->affected_rows;
    $stmt->close();
}
