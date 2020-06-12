<?php
include "Koneksi.php";
$id = $_GET['id'];
$Title = $_GET['Title'];    //varibel field nama
$FName = $_GET['FName'];    //varibel field nama
$LName = $_GET['LName'];    //varibel field stok
$Email = $_GET['Title'];  //varibel field deskripsi
$National = $_GET['National'];        //varibel field harga
$Country = $_GET['Country'];  //varibel field kategori
$Phone = $_GET['Phone'];       //varibel field berat
$TRoom = $_GET['TRoom'];     //varibel field diskon
$Bed = $_GET['Bed'];     //varibel field diskon
$NRoom = $_GET['NRoom'];     //varibel field diskon
$Meal = $_GET['Meal'];     //varibel field diskon
$cin = $_GET['cin'];     //varibel field diskon
$cout = $_GET['cout'];     //varibel field diskon
$stat = $_GET['stat'];     //varibel field diskon
$nodays = $_GET['nodays'];     //varibel field diskon

$query = "UPDATE roombook set Title='$Title',FName='$FName',LName='$LName',Email='$Email',National='$National',Country='$Country',Phone='$Phone',TRoom='$TRoom',Bed='$Bed',NRoom='$NRoom',Meal='$Meal',cin='$cin',cout='$cout',stat='$stat',nodays='$nodays' where id='$id'";
$result = mysqli_query($conect, $query);

if ($result) {
    echo "Berhasil update data ke database ";
    ?>
	<a href="HomeCRUD.php">Lihat data di Tabel</a>
<?php

} else {
    echo "Gagal update data" . mysqli_error($conect);
}
?>

