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
$query=mysqli_query($con,"insert into tblbookings(bookingNo,fullName,emailId,phoneNumber,bookingDate,bookingTime,noAdults,noChildrens) values('$bno','$fname','$emailid','$phonenumber','$bookingdate','$bookingtime','$noadults','$nochildrens')");
if($query){
echo '<script>alert("Your order sent successfully. Booking number is "+"'.$bno.'")</script>';
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
    <h1 class="header-w3ls">&nbsp;</h1>
    <div class="appointment-w3">
        <div style="text-align: center; padding: 10px;">
            <img src="./images/restro-sathi.png" alt="Brand Logo"
                style="width: 50px; height: 50px; vertical-align: middle; margin-right: 5px;" />
            <span style="font-weight: bold; font-size: 28px; color: #dbb946; vertical-align: middle;">Restro
                Sathi</span>
            <span style="display: block; font-size: 18px; color: #ffffff; margin-top: 5px;">
                Check your booking status !
            </span>
            <hr style="margin-top: 10px; border-color: #dbb946;">
        </div>
        <form action="search-result.php" method="post">
            <div class="personal">

                <div class="main">
                    <div class="form-left-w3l">

                        <input type="text" class="top-up" name="searchdata"
                            placeholder="Search by booking no or contact no" required="">
                    </div>


                </div>



                <div class="btnn">
                    <input type="submit" value="Search" name="submit">
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