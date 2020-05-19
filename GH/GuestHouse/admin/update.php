<?php 
 
include 'Koneksi.php';
$Title = $_POST['title'];
$Fname = $_POST['fname'];
$Lname = $_POST['lname'];
$Email = $_POST['email'];
$National = $_POST['nation'];
$Country = $_POST['country'];
$Phone = $_POST['phone'];
$TRoom = $_POST['troom'];
$Bed = $_POST['bed'];
$NRoom = $_POST['nroom'];
$Meal = $_POST['meal'];
$cin = $_POST['cin'];
$cout = $_POST['cout'];
$stat = $_POST['stat'];
$nodays = datediff($_POST['nodays']);

 
mysql_query("UPDATE roombook SET Title=`$title`, Fname=`$fname`, LName=`$lname`, Email=`$email`, National=`$natio`, Country=`$country`,Phone=`$phone`, TRoom=`$troom`, Bed=`$bed`,NRoom=`$nroom`, Meal=`$meal`, cin=`$cin`, cout=`$cout`,stat=`$stat`,nodays=`$nodays` Where Title='$title'");
 
header("location:Index.php?pesan=update");
 
?>