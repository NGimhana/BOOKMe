<?php
/**
 * Created by IntelliJ IDEA.
 * User: Gimhana
 * Date: 11/8/2017
 * Time: 9:40 PM
 */

if(isset($_REQUEST["setLogin"])){
    $username = $_REQUEST["userName"];
    $password = $_REQUEST["passWord"];

    $dbhost = 'localhost:3306';
    $dbuser = 'root';
    $dbpass = '';
    $databse = 'Company';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $databse);
    $sql=" SELECT * FROM Customer WHERE UserName ='$username' and password = '$password' ";
    $result=mysqli_query($conn,$sql);

    $row=mysqli_fetch_array($result,MYSQLI_ASSOC);

    if($row>0){
       //header("localhost/Bus/BookingHome.php") ;
       echo 'suc';

    }else{
       echo 'fai';
    }

}


?>