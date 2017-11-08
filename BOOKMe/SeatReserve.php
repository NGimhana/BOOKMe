<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/SeatReserve.css">
    <script src="json2.js"></script>
</head>

<?php
    $num = 1;
    $bus_id = 1;
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, "BOOKMe");

    // Check connection
//    if (!$conn) {
//        die("Connection failed: " . mysqli_connect_error());
//    }
////    echo "Connected successfully";
    $stateList = ["available","reserved"];
    $sql = "SELECT state FROM seat WHERE bus_id = '$bus_id' order by seat_no";
    $result = mysqli_query($conn,$sql);
    $intList = array();
    while($row=mysqli_fetch_array($result, MYSQLI_ASSOC)){
        array_push($intList,$row['state']);
    }
?>

<body>
    <div class="container main">
        <h1 id="heading">Seat Reservation</h1>
     <div class="container sub">
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="col-sm">
                    </div>
                    <div class="col-sm">
                    </div>
                    <div class="col-sm">
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
         <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <div class="row">
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                  </div>
            </div>
            <div class="col-sm">
               <div class="row">
                   <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                       <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num++; ?></p>
                    </div>
                    <div class="<?php echo "col-sm ".$stateList[$intList[$num-1]]." seat"; ?>">
                        <p class="seatNo"><?php echo $num; ?></p>
                    </div>
               </div>
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>  
         </div>
     </div>
     <button type="button" class="btn btn-secondary" id="butt">Reserve</button>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script src="js/SeatReserve.js"></script>
    
    <script type="text/javascript">
        var butt = document.getElementById("butt");
        butt.addEventListener("click",function(){
            var texts =[];
            var reserve;
            var outputs = document.querySelectorAll(".selected");
            for (var i=0; i<outputs.length; i++){
                texts.push(outputs[i].textContent);
            }
            
            
            run(texts);
            
            
        });
        
        function run(texts){
            
            var strin = JSON.stringify(texts);
            alert(strin);
            $.ajax(
                {
                    type:"POST",
                    url :"reserveajax.php",
                    data:{"reserve":true,"strn":strin},
                    async:false,
                    success:function(msg){
                        
                        document.location.href = "SeatReserve.php";
                    }
                }
            )
            return 0;
        }
        
        
        
    </script>
    
</body>
</html>


<?php

?>