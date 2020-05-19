<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<?php
include "Db.php";

$query = "SELECT * FROM roombook where Title='$_GET[Title]'";
$result = mysqli_query($con, $query);
?>

	<form action="EditAdmin.php" method="GET">
		<table>
		<?php
    while ($row = mysqli_fetch_array($result)) {
        ?>
			<tr>
				<td> Id: </td>
				<td> <input type="text" name="id" value="<?php echo $row['id']; ?>">
			</tr>
			<tr>
				<td> Nama: </td>
				<td> <input type="text" name="FName" value="<?php echo $row['FName']; ?>"> </td>
			</tr>
			<tr>
			<td> Title: </td>
				<td> <textarea name="Title"  rows="5" cols="20"> <?php echo $row['Title']; ?></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" name="simpan" value="Simpan"></td>
			</tr>
			<?php

}
?>
		</table>
	</form>

</body>
</html>