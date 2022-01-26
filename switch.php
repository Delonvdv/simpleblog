<?php

// $_GET["this is the key'] looks for a key/value pair. Use the key to reference the value

if(isset($_GET["num"])){
    $num = $_GET["num"];

    switch($num){
        case 0:
            echo "Num is 0";
            break;
        case 1:
            echo "Num is 1";
            break;
        case 2:
            echo "Num is 2";
            break;
        default:
            echo "Num does not match any case";
            break;
    }
}

if(isset($_GET["fruit"])){
    $fruit = $_GET["fruit"];
    $usedFor;

    switch(strtolower($fruit)){
        case "apple":
            $usedFor = " it is used for fruit salad";
            echo "The fruit is apple $usedFor";
            break;
        case "banana":
            echo "The fruit is banana";
            break;
        case "cherry":
            echo "The fruit is cherry";
            break;
        default:
            echo "The fruit does not match any case";
            break;
    }
}