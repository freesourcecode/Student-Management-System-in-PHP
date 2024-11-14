<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<?php
require_once('mysql_connection.php');
session_start();
if(!isset($_SESSION["id"]) || $_SESSION["id"] == '') 
{
	header('location: index.php');
}

$id = $_GET['id'];
$selectquery = "SELECT * FROM records WHERE id = '".$id."'";
$result = mysqli_query($bd,$selectquery);
while($row = mysqli_fetch_array($result)){
	$getfirstname = $row['firstname']; 
	$getlastname = $row['lastname']; 
	$getmi = $row['mi']; 
	$getfirst = $row['first_grading'];
	$getsecond = $row['second_grading']; 
	$getthird = $row['third_grading']; 
	$getfourth = $row['fourth_grading'];
}

if(!isset($_FILES['image']['tmp_name']))
{
	echo "";
} else {

	$getfirstname = $_POST['firstname']; 
	$getlastname = $_POST['lastname']; 
	$getmi = $_POST['mi']; 
	$getfirst = $_POST['first']; 
	$getsecond = $_POST['second']; 
	$getthird = $_POST['third']; 
	$getfourth = $_POST['fourth']; 
	$dir = "images/";
	$target_file = $dir.basename($_FILES["image"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	$file=$_FILES['image']['tmp_name'];
	$picture=$_FILES['image']['name'];
	if($picture == "")
	{
		echo "<script>alert('Please choose a picture!')</script>";
	} else {
		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
	    	echo "<script>alert('PNG, JPG, and JPEG are allowed!')</script>";
		} else {
			$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
			$image_name= addslashes($_FILES['image']['name']);
			move_uploaded_file($_FILES["image"]["tmp_name"], $dir . $_FILES["image"]["name"]);

			$query = "UPDATE records SET firstname='".$getfirstname."',lastname='".$getlastname."',mi='".$getmi."',picture='".$picture."',first_grading='".$getfirst."',second_grading='".$getsecond."',third_grading='".$getthird."',fourth_grading='".$getfourth."' where id='".$id."'";
			if(mysqli_query($bd,$query))
			{	
				echo "<script>alert('Data Successfully Edited!')</script>";
				echo '<script>windows: location="view_records.php"</script>';
			}else{
				echo "<script>alert('Data Not Edited!')</script>";
				echo '<script>windows: location="edit_student.php?id='.$id.'"</script>';
			}
			

		}
	}
	
}
?>
<body>
	<center>
		<?php include('header.html');?>
		<?php include('teacher_header.php');?>
		</br>
		<table width="30%">
			<tr>
				<td>
					<form action="" method="post" enctype="multipart/form-data">
					<center>
					<table style="border: 4px solid #0909da;border-style: inset;border-radius: 10px;background-color: #c9e8ec;">
						<tr>
							<th style="border-bottom: 2px solid;padding: 5px 0px;">Update Student Information</th>
						</tr>
						<tr>
							<th width="50%" style="border-bottom: 2px solid;">
								<table width="100%">
									<tr>
										<th style="text-align: left;padding-left: 20px;" width="45%">Firstname: </th>
										<td><input type="text" name="firstname" value="<?php echo $getfirstname;?>" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Lastname: </th>
										<td><input type="text" name="lastname" value="<?php echo $getlastname;?>" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Middle Initial: </th>
										<td><input type="text" name="mi" value="<?php echo $getmi;?>" maxlength="1" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Picture: </th>
										<td><input type="file" name="image" id="image" style="width: 85%;"></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">First Grading: </th>
										<td><input type="text" name="first" value="<?php echo $getfirst;?>" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Second Grading: </th>
										<td><input type="text" name="second" value="<?php echo $getsecond;?>" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Third Grading: </th>
										<td><input type="text" name="third" value="<?php echo $getthird;?>" required></td>
									</tr>
									<tr>
										<th style="text-align: left;padding-left: 20px;">Fourth Grading: </th>
										<td><input type="text" name="fourth" value="<?php echo $getfourth;?>" required></td>
									</tr>
								</table>
							</th>
						<tr>
							<th colspan="2" style="padding: 5px 0px;"><input type="submit" name="update" value="Update" style="width: 40%;padding: 5px 30px;font-size: 17px;font-weight: bold;border-radius: 3px;border: 2px solid crimson;"></th>
						</tr>
					</table>
					</center>
					</form> 
				</td>
			</tr>
		</table>	
	</center>
</body>
</html>