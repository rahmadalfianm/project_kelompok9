<!DOCTYPE html>
<!-- saved from url=(0040)http://getbootstrap.com/examples/signin/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="./lib/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="./lib/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./lib/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="./lib/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .panel {
      width: 400px;
      /* height: 215px; */
      /* position: relative; */
      /* padding: 20px 5px 0; */
    }
    body {
	          background: url(bg.jpg) no-repeat fixed;
            background-size: cover;
	          /* -webkit-background-size: 100% 100%;
	          -moz-background-size: 100% 100%;
	          -o-background-size: 100% 100%;
	          background-size: 100% 100%; */
	        }
	    </style>
  </head>

  <body >
    <br><br><br>
    <div class="container">
    <div class="panel panel-default">
      <form class="form-signin" method="post" action="model/proses.php">
        <h2 class="form-signin-heading">ABSENSI PEGAWAI</h2><br>
        <!-- <div class='alert alert-danger'><strong>Info : Telah dilakukan pembersihan User, untuk dapat masuk silahkan hubungi <a href="http://fb.me/rizal.ofdraw" title="Hubungi Admin">Admin</a>.<br />Mohon maaf atas ketidaknyamanan ini, Terimakasih.</strong></div>
        <div class='alert alert-success'>
        <strong>Untuk sekedar melihat-lihat Anda dapat menggunakan akun sementara :<br />
        User : siswa@siswa.siswa <br />
        Pass : siswa
        </strong>
        </div> -->
        <?php 
            if (isset($_GET['log'])) {
                if ($_GET['log']==2) {
                    echo "<div class='alert alert-danger'><strong>Periksa kembali email & katasandi Anda!</strong></div>";
                }
            }
         ?>
        <label for="inputEmail" class="sr-only">email</label>
        <input type="email" name="email" id="inputEmail" class="form-control" placeholder="alamat email" required="" autofocus="">
        <br>
        <label for="inputPassword" class="sr-only">kata sandi</label>
        <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="kata sandi" required="">
        <br>
        <input class="btn btn-lg btn-success btn-block" type="submit" name="login" value="Sign-in">
        <li><a class="btn btn-lg btn-success btn-block" href="../index.php"><i class="fa fa-sign-out fa-fw"></i> Home</a>
      </form>
      </div>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./lib/ie10-viewport-bug-workaround.js"></script>
  

</body></html>