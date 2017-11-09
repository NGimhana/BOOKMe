<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">

    <title>BOOKMe</title>
</head>
<body>



<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">BOOKMe</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Page 3</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign-UP</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>

        </ul>
    </div>

</nav>

<div class="container" align="center" style="background-color: aliceblue">
    <div class="row">
        <h1>Search Your Travel</h1>
    </div>
</div>

<div class="container-fluid" align="center"><br>

    <div class="row">

        <div class="col-sm-2" align="center"></div>

        <div class="col-sm-8" style="background-color: aquamarine" align="center">
            <br>
            <form>
                <label class="radio-inline">
                    <input type="radio" name="optradio">ONE-WAY
                </label>
                <label class="radio-inline">
                    <input type="radio" name="optradio">ROUND-TRIP
                </label>
            </form>
            <br>
            <label>Adult
                <select>
                    <option value="volvo">1</option>
                    <option value="saab">2</option>
                    <option value="opel">3</option>
                    <option value="audi">4</option>
                    <option value="audi">5</option>
                </select>
            </label>
            <label>Children
                <select>
                    <option value="volvo">1</option>
                    <option value="saab">2</option>
                    <option value="opel">3</option>
                    <option value="audi">4</option>
                    <option value="audi">5</option>
                </select>
            </label>
            <br>
            <br>
            <form class="form-inline" method="GET" action="SearchResults.php">
                <div class="row">

                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="begin" type="text" class="form-control" name="beginTown" placeholder="From : City, Town or Village">
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="destination" type="text" class="form-control" name="destinationTown" placeholder="To : City, Town or Village">
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <label>Arrival.
                            <div class="input-group">
                                <!--span class="input-group-addon"><i class="glyphicon glyphicon-date"></i></span-->
                                <input id="beginDate" type="date" class="form-control" name="email" placeholder="From : City, Town or Village">
                            </div>
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label>Destina.
                            <div class="input-group">
                                <!--span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span-->
                                <input id="endDate" type="date" class="form-control" name="email" placeholder="To : City, Town or Village">
                            </div>
                        </label>
                    </div>
                    <div class="col-sm-2"></div>
                </div>

                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <button type="submit" name="submit" class="btn btn-success">Let's Go</button>
                        <button type="button" class="btn btn-danger">Reset</button>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </form>
        </div>
        <div class="col-sm-2" align="center"></div>
    </div>
</div>
</div>



</body>
</html>

