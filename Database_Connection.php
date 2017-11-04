<?php
/**
 * Created by IntelliJ IDEA.
 * User: Gimhana
 * Date: 11/4/2017
 * Time: 4:19 PM
 */
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass);


   if(! $conn ) {
       echo ('Could not connect: '.mysqli_connect_error());
   }

   echo 'Connected successfully';


?>