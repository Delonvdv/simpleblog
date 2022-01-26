<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $pageTitle; ?></title>
    <style>
        body{
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        main {
            width: 80%;
            margin: 0 auto;
            padding-top:50px;
            clear:both;
        }
        nav{
            margin:10px 0 50px;
            text-align: center;
        }
        
       header{
           text-align: center;
       }
    </style>
</head>

<body>
    <header>
        <h1>SIMPLE BLOG - DEMO SITE</h1>
        <nav>
            <a href="index.php">Home</a> | 
            <a href="posts.php">All Posts</a> | 
            <a href="authors.php">Authors</a> | 
            <a href="showSelectedBlog.php">Selected Blogs</a> 
        </nav>
    </header>
    

    <main>