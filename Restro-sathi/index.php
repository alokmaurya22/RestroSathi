<?php include_once('admin/includes/config.php');

if(isset($_POST['submit'])){

$fname=$_POST['name'];
$emailid=$_POST['email'];
$phonenumber=$_POST['phonenumber'];
$bookingdate=$_POST['bookingdate'];
$bookingtime=$_POST['bookingtime'];
$noadults=$_POST['noadults'];
$nochildrens=$_POST['nochildrens'];
$bno=mt_rand(100000000,9999999999);
//Code for Insertion
$sql_query = "insert into tblbookings(bookingNo,fullName,emailId,phoneNumber,bookingDate,bookingTime,noAdults,noChildrens) values('$bno','$fname','$emailid','$phonenumber','$bookingdate','$bookingtime','$noadults','$nochildrens')";
echo $sql_query;
$query=mysqli_query($con, $sql_query);
if($query){
echo '<script>alert("Your request sent successfully. Booking number is "+"'.$bno.'. Save it for future purposes.")</script>';
echo "<script type='text/javascript'> document.location = 'index.php'; </script>";
} else {
echo "<script>alert('Something went wrong. Please try again.');</script>";
}

}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Restro Sathi</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
    addEventListener("load", function() {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }
    </script>
    <!-- Meta tags -->
    <!--stylesheets-->
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <!-- Calendar -->
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <!-- //Calendar -->
    <link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
    <!-- Time-script-CSS -->

    <link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
</head>

<body>
    <h1 class="header-w3ls">
    </h1>
    <div class=" appointment-w3">
        <div style="text-align: center; padding: 10px;">
            <img src="./images/restro-sathi.png" alt="Brand Logo"
                style="width: 50px; height: 50px; vertical-align: middle; margin-right: 5px;" />
            <span style="font-weight: bold; font-size: 28px; color: #dbb946; vertical-align: middle;">Restro
                Sathi</span>
            <span style="display: block; font-size: 18px; color: #ffffff; margin-top: 5px;">
                Book your table now.....
            </span>
            <hr style="margin-top: 10px; border-color: #dbb946;">
        </div>

        <form action="#" method="post">
            <div class="personal">

                <div class="main">
                    <div class="form-left-w3l">

                        <input type="text" class="top-up" name="name" placeholder="Name" required="">
                    </div>
                    <div class="form-left-w3l">

                        <input type="email" name="email" placeholder="Email" required="">
                    </div>
                    <div class="form-right-w3ls ">

                        <input class="buttom" type="text" name="phonenumber" placeholder="Phone Number" required="">
                        <div class="clearfix"></div>
                    </div>
                </div>

            </div>
            <div class="information">


                <div class="main">


                    <div class="form-left-w3l">
                        <input id="datepicker" name="bookingdate" type="text" placeholder="Booking Date &" required="">
                        <input type="text" id="timepicker" name="bookingtime"
                            class="timepicker form-control hasWickedpicker" placeholder="Time" required=""
                            onkeypress="return false;">
                        <div class="clear"></div>
                    </div>
                </div>

                <div class="main">

                    <div class="form-left-w3l">
                        <select class="form-control" name="noadults" required>
                            <option value="">Number of Adults</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                    <div class="form-right-w3ls">
                        <select class="form-control" name="nochildrens" required>
                            <option value="">Number of Children</option>
                            <option value="1">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>

            </div>


            <div class="btnn">
                <input type="submit" value="Reserve a Table" name="submit">
            </div>
            <div class="copy">
                <p>Check Booking <a href="check-status.php" target="_blank">Status</a></p>
            </div>
            <div class="copy">
                <p>Admin Panel<a href="admin/" target="_blank"> Login here</a></p>
            </div>
        </form>
    </div>



    <!-- js -->
    <script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
    <!-- //js -->
    <!-- Calendar -->
    <script src="js/jquery-ui.js"></script>
    <script>
    $(function() {
        $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
    });
    </script>
    <!-- //Calendar -->
    <!-- Time -->
    <script type="text/javascript" src="js/wickedpicker.js"></script>
    <script type="text/javascript">
    $('.timepicker,.timepicker1').wickedpicker({
        twentyFour: false
    });
    </script>
    <!-- //Time -->

</body>

</html>