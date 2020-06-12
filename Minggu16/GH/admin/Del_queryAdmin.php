<?php
	$conn = new mysqli('localhost', 'root', '', 'guesthouse');
 	
 	$id = $_GET['id'];
	$name = $_GET['name'];
	$query = "DELETE FROM products WHERE name='$name'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "Data berhasil di hapus";
		header("location: CartAdmin.php");
	?> 
	<?php
	}else {
		echo "Data gagal dihapus" . mysqli_error($connect);
	}
?>