<?php 

if(isset($_REQUEST["reserve"])){
    $array=json_decode($_POST['strn']);
    $bus_id = 1;
    $servername = "localhost";
    $username = "root";
    $password = "";
    
    $conn = mysqli_connect($servername, $username, $password, "company");
    for($i=0;$i<count($array);$i++){
        $seat_no = intval($array[$i]);

        $sql = "UPDATE seat SET state = 1 WHERE bus_id = '$bus_id'AND seat_no = '$seat_no'";
        if(mysqli_query($conn,$sql)){
            echo 'suc';
        }else{
            echo 'fai';
        }

    }
}

?>