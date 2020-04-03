<?php 
session_start();
$koneksi = new mysqli("localhost", "root", "", "hotel")
?>

<!DOCTYPE html>
<html>
<head>
    <title>TRegister User</title>
    <meta charset="UTF-8">
    <!-- <link rel="stylesheet" href="css/style1.css"> -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
</head>
<style>
    body{
        background-color: black;
    }
    </style>
<body>

<div class="container">
    <div class="col-md-4"></div>
    <div class="col-md-4"><div class="panel panel-warning" style="margin-top:150px;">
        <div class="panel-heading">
        <h3 class="panel-title" style="text-align: center">Welcome to SUNRISE</h3>
        </div>
    <div class="panel-body">
        <form class="form-horizontal" method="post">
            <div class="form-group">
            <div class="col-sm-12">
                <input type="text" name="username" class="form-control input-sm" placeholder="Username" required="" autocomplete="off"/>
            </div>
            </div>



            <div class="form-group">
            <div class="col-sm-12">
                <input type="password" name="password" class="form-control input-sm" placeholder="Password" required="" autocomplete="off"/>
            </div>
            </div>

            <div class="form-group">
            <div class="col-sm-12">
                <input type="repass" name="repass" class="form-control input-sm" placeholder="Re-Password" required="" autocomplete="off"/>
            </div>
            </div>


            <div class="form-group">
            <div class="col-sm-12">
                <button type="submit" name="regis" value="regis" class="btn btn-warning btn-block"><span class="fa fa-plus"></span>
                    Register
                </button><br>
            </div>
            <li><a href="IndexLogin.php"><i class="fa fa-sign-out fa-fw"></i> Login</a>
            <li><a href="index.php"><i class="fa fa-sign-out fa-fw"></i> Home</a>
        </form>
    </div>
    </div></div>
    <div class="col-md-4">
        
    </div>

</div>
</body>
</html>

<?php 
if (isset($_POST["regis"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $repass = $_POST["repass"];

    if ($password == $repass) {
        $query = $koneksi->query("INSERT INTO `loginuser`(`usname`, `pass`) VALUES ('$username', '$password')");
    } else {
        echo '
      <script>
        alert("Periksa password anda !");
        window.location  = "Regis.php"
      </script>
    ';
    }

    if ($query) {
        echo '
      <script>
        alert("Pendaftaran Berhasil, Silahkan login untuk berbelanja ");
        window.location  = "IndexLogin.php"
      </script>
    ';
    } else {
        echo '
      <script>
        alert("Terjadi Kesalahan, Silahkan Ulangi Lagi. (Kesalahan E01)");
        window.location  = "Regis.php"
      </script>
    ';
    }
}