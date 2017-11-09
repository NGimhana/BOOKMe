<!DOCTYPE html>
<?php
include ("dbconnection.php");
mysqli_select_db($link,'testteacherdb');
$sql ="SELECT *  FROM reservationdetails";
$records = mysqli_query($link,$sql);

?>

<html lang="en">
<head>
    <title>View History</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<?php //echo file_get_contents( "upside.php" ); ?>
<div class="container">
    <h2>Booking history</h2>
    <p>The .table-condensed class makes a table more compact by cutting cell padding in half:</p>
    <table class="table table-condensed">
        <thead>
        <tr>
            <th>Reservationid</th>
            <th>customerid</th>
            <th>busid</th>
            <th>seatid</th>
            <th>day</th>

        </tr>
        </thead>
        <tbody>
        <?php
        while($classd= mysqli_fetch_assoc($records)){
	    echo "<tr>";
        echo "<td>".$classd['classname']."</td>";
        echo "<td>".$classd['teacher']."</td>";
        echo "<td>".$classd['day']."</td>";
        echo "<td>".$classd['time']."</td>";
        echo "<td>".$classd['hall']."</td>";

        echo "</tr>";


        }
        ?>
        <!--tr>
            <td>John</td>
            <td>Doe</td>
            <td>john@example.com</td>
        </tr>
        <tr>
            <td>Mary</td>
            <td>Moe</td>
            <td>mary@example.com</td>
        </tr>
        <tr>
            <td>July</td>
            <td>Dooley</td>
            <td>july@example.com</td>
        </tr-->
        </tbody>
    </table>
</div>

</body>
</html>
