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
$grading = $_GET['grading'];

if(isset($_POST['add'])){
	$id = $_POST['hidden_id'];
	$grade = $_POST['grade'];
	if($grading == "First Grading"){
		$query = "UPDATE records SET first_grading='".$grade."' where id='".$id."'";
		mysqli_query($bd,$query);
	} elseif ($grading == "Second Grading"){
		$query = "UPDATE records SET second_grading='".$grade."' where id='".$id."'";
		mysqli_query($bd,$query);
	} elseif ($grading == "Second Grading"){
		$query = "UPDATE records SET third_grading='".$grade."' where id='".$id."'";
		mysqli_query($bd,$query);
	} elseif ($grading == "Fourth Grading"){
		$query = "UPDATE records SET fourth_grading='".$grade."' where id='".$id."'";
		mysqli_query($bd,$query);
	}
	echo "<script>alert('Grade Successfully Added!')</script>";

}
?>
<body>
	<center>
		<?php include('header.html');?>
		<?php include('teacher_header.php');?>
		</br>
		<table width="50%" cellspacing="0" style="border:3px solid #f35306;border-style: inset;">
			<tr>
				<th>
					<table width="100%" cellspacing="0">
						<tr>
							<th colspan="4" style="border-bottom: 1px solid;background-color: #f7b553;padding: 5px 0px;font-size: 25px;">Add Students Grade for <?php echo $grading;?></th>
						</tr>
						<tr>
							<th width=25%" style="background-color: #f38b5a;border-bottom: 1px solid;padding: 5px 0px;">Picture</th>
							<th width="25%" style="background-color: #f38b5a;border-bottom: 1px solid;padding: 5px 0px;">Name</th>
							<th width="25%" style="background-color: #f38b5a;border-bottom: 1px solid;padding: 5px 0px;">Grade</th>
							<th width="25%" style="background-color: #f38b5a;border-bottom: 1px solid;padding: 5px 0px;">
								<a href="choose_grading.php" style="text-decoration: none;padding: 0px 15px;color: black;background-color: #abb5fb;border: 2px solid black;border-style: outset;border-radius: 5px;">Back</a>
							</th>
						</tr>
						<?php
						$query = "SELECT * FROM records where teacher_number = '".$_SESSION["id"]."' order by lastname ASC";
						$result = mysqli_query($bd,$query);
						while($row = mysqli_fetch_array($result)){
							$id = $row['id']; 
							$firstname = $row['firstname']; 
							$lastname = $row['lastname']; 
							$mi = $row['mi']; 
							$picture = $row['picture'];
							if($grading == "First Grading"){
								$grade = $row['first_grading']; 
							} elseif ($grading == "Second Grading"){
								$grade = $row['second_grading'];
							} elseif ($grading == "Second Grading"){
								$grade = $row['third_grading'];
							} elseif ($grading == "Fourth Grading"){
								$grade = $row['fourth_grading'];
							}
							if($grade == 0){
						?>
						<form action="" method="post">
							<tr>
								<th style="background-color: #efb295;border-bottom: 1px solid;"><img src="images/<?php echo "$picture";?>"  style="width: 40px; height: 40px;background-color: #f9f5f5;border: 2px solid black;"></th>
								<th style="background-color: #efb295;border-bottom: 1px solid;"><?php echo "$lastname , $firstname $mi.";?></th>
								<th style="background-color: #efb295;border-bottom: 1px solid;">
									<input type="text" name="grade" style="width: 50%;">
									<input type="hidden" name="hidden_id" value="<?php echo "$id";?>" style="width: 50%;">
								</th>
								<th style="background-color: #efb295;border-bottom: 1px solid;">
									<input type="submit" name="add" value="Add Grade" style="text-decoration: none;padding: 5px 15px;font-size: 15px;color: black;background-color: #abb5fb;border: 2px solid black;border-style: outset;border-radius: 5px;">
								</th>
							</tr>
						</form>
						<?php }
						}?>
					</table>
				</th>
			</tr>
		</table>
	</center>
</body>
</html>