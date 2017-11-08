<?php

    $dbhost = 'localhost:3306';
    $dbuser = 'root';
    $dbpass = '';
    $databse = 'Company';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $databse);

    if(!isset($conn)){
        echo mysqli_error();
    }

?>