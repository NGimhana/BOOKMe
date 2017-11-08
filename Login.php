
<!--/**
 * Created by IntelliJ IDEA.
 * User: Gimhana
 * Date: 11/8/2017
 * Time: 5:50 PM
 */-->

<html>
<head>

    <script type="text/javascript" >
        function login1() {
            var userName = document.getElementById("username").value;
            var passWord = document.getElementById("password").value;
            var setLogin;
            console.log("*****Running");

            $.ajax(
                {
                    type: "GET",
                    url : "ajax.php",
                    data : {"setLogin":true,"userName":userName,"passWord":passWord},
                    async : false,

                    success:function(msg){
                        if(msg== "suc"){
                            document.location.href = "BookingHome.php";
                        }
                    }
                }
            )
        }

    </script>
    <link rel="stylesheet" type="text/css" href="css/Login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">

</head>
<body>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<div class="container">


    <div class="omb_login" style="width:800px; margin:0 auto;">
        <h3 class="omb_authTitle">Login or <a href="#">Sign up</a></h3>



        <div class="row omb_row-sm-offset-3">
            <div class="col-xs-12 col-sm-6">
                <!--GET->Post-->
                <!--form class="omb_loginForm"  autocomplete="off" method="GET"-->
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" class="form-control"  id="username" placeholder="User Name">
                    </div>
                    <span class="help-block"></span>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input  type="password" class="form-control" id="password" placeholder="Password" >
                    </div>
                    <span class="help-block">Password error</span>

                    <button class="btn btn-lg btn-primary btn-block" onclick="login1()">Login</button>
                <!--/form-->
            </div>
        </div>
        <div class="row omb_row-sm-offset-3">

        </div>
    </div>



</div>

</body>


</html>