<!DOCTYPE html>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">

    <title>SearchBus</title>

</head>
<body>
<div class="container">

    <div class="row">

        <div class="col-sm-1"></div>
        <div class="col-sm-10" style="background-color: aliceblue">
            <H2>Search Results</H2>

            <table class="table">
                <thead style="background-color: blue">
                <tr>
                    <th style="color: white">Your Station	</th>
                    <th style="color: white">Arrival Time	</th>
                    <th style="color: white">Departure Time</th>
                    <th style="color: white">Destination / Time</th>
                    <th style="color: white">End / Time</th>
                    <th style="color: white">Frequency </th>
                </tr>

                </thead>
                <tbody>

                    <?php
                    include 'search_station.php';
                    $beginTown = $_GET['beginTown'];
                    $destinationTown = $_GET['destinationTown'];

                    $sql = "SELECT * FROM Bus Where RouteID = (SELECT RouteID from Route where StartTown <= 2
                    and DestinationTown >= 2 UNION SELECT RouteID FROM Route WHERE StartTown <= 3 and DestinationTown >= 3)";
                    //$result = mysqli_query($conn, $sql);
                    $result = mysqli_query($conn,$sql);

                    //test
                    //echo gettype($result);


                    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                        echo "<tr>";
                        echo "<td>" . "<a href='#'>" . $row['RouteID'] . "</a>" . "</td>";
                        echo "<td>" . gettype($row['StartStation']) . "</td>";
                        echo "<td>" . $row['DESTINATION'] . "</td>";
                    }
                    ?>
                </tbody>

            </table>


        </div>
        <div class="col-sm-1"></div>

    </div>


</div>


</body>
</html>