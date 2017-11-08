<?php
    include 'databaseConnection.php';
//$start_st = 2;
//$end_st = 1;
    $start_st = $_GET['beginTown'];
    $end_st = $_GET['destinationTown'];
    $start_st = intval($start_st);
    $end_st = intval($end_st);
    $start_sql = "SELECT route_list FROM station WHERE s_id = '$start_st'";
    $end_sql = "SELECT route_list FROM station WHERE s_id = '$end_st'";
    $start_sql_result = mysqli_query($conn, $start_sql);
    $end_sql_result = mysqli_query($conn, $end_sql);
    $row = mysqli_fetch_array($start_sql_result);
    $start_row = $row['route_list'];
    $start_route = explode('K', $start_row);
    $row = mysqli_fetch_array($end_sql_result);
    $end_row = $row['route_list'];
    $end_route = explode('K', $end_row);
    $result = array_intersect($start_route, $end_route);
    foreach($result as $i){
        echo "$i" ."<br>";
}
?>