<!DOCTYPE html>
<html>
<head>
    <title>Search Result of Buses</title>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">


</head>
<body>

<div class="container">
    <form action="post">
        <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="background-color: aliceblue">
                <H2>Search Results</H2>

                <table class="table">
                    <thead style="background-color: blue">
                    <tr>
                        <th style="color: white">Bus Index</th>
                        <th style="color: white">Route No</th>
                        <th style="color: white">Departure Time</th>
                        <th style="color: white">End / Time</th>
                        <th style="color: white">Frequency </th>
                    </tr>

                    </thead>
                    <tbody>

                    <?php
                    include 'search_station.php';
                    foreach ($result as $route_id){
                        $sql = "SELECT bus_id, route_id, departure_time, end_time from route_bus where route_id = '$route_id'";
                        $query_out = mysqli_query($conn,$sql);
                        while ($row = mysqli_fetch_array($query_out,MYSQLI_ASSOC)){
                            echo "<tr>";
                            echo "<td>" ."<input type='radio' name='bus' id=" .$row['bus_id'] .">" .$row['bus_id'] ."</td>";
                            echo "<td>" .$row['route_id'] ."</td>";
                            echo "<td>" .$row['departure_time'] ."</td>";
                            echo "<td>" .$row['end_time'] ."</td>";
                        }
                    }
                    ?>

                    </tbody>

                </table>


            </div>
            <div class="col-sm-1"></div>

        </div>
        <button type="submit" name="submit" class="btn btn-success">Next</button>
    </form>
</div>

</body>
</html>