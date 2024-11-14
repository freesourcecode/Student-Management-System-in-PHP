<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<?php
require_once('mysql_connection.php');
session_start();
$type = $_GET['usertype'];

$selectquery = "SELECT * FROM accounts where usertype = '".$type."'";
$selectresult = mysqli_query($bd,$selectquery);
while ($row = mysqli_fetch_array($selectresult)){
	$image = $row['picture'];
}

if(isset($_POST['login'])){
	$username = $_POST['username'];
	$password = $_POST['password'];
	$query = "SELECT * FROM accounts where username='".$username."' and password = '".$password."' and usertype = '".$type."'";
	$result	= mysqli_query($bd,$query);
	$row  = mysqli_fetch_array($result);
	if(is_array($row)) {
		$_SESSION["id"] = $row['id'];
		if($type == "ADMIN"){
			header('location: view_accounts.php');
		} elseif($type == "USER"){
			header('location: view_records.php');
		}
	} 
	else 
	{
		echo "<script>alert('Incorrect Username or Password!')</script>";
	}
}
?>
<body> 
	<center>
		<?php include('header.html');?>
		</br>
		<table width="25%">
			<tr>
				<th style="border: 4px solid #0909da;border-style: inset;border-radius: 10px;background-color: #88edfb;">
					<center>
						<form action="" method="post">
							<table>
								<tr>
									<font style="font-size: 25px;"><strong>LOGIN FORM</strong></font>
									</br>
									<font style="font-size: 15px;"><strong>(<?php echo $type;?>)</strong></font>
									</br>
								</tr>
								<?php 
								if($type == "ADMIN"){	
								?>
								<tr>
									<td colspan="2"><center><img src="images/<?php echo $image;?>" style="width: 50%; height: 50%;background-color: #f9f5f5;border: 2px solid black;"></center></td>
								</tr>
								<?php } ?>
								<tr>
									<th>Username:</th>
									<td><input type="text" name="username" required></td>
								</tr>
								<tr>
									<th>Password:</th>
									<td><input type="password" name="password" required></td>
								</tr>
								<tr>
									<th colspan="2">
										</br>
										<input type="submit" name="login" value="Login" style="border-radius: 4px;border-color: #ab9090; padding: 5px 15px;font-size: 15px;">
										<button style="border-radius: 4px;border-color: #ab9090; padding: 5px 0px;font-size: 15px;"><a href="index.php" style="text-decoration: none;cursor: default;    padding: 5px 15px; color: black;">Back</a></button>
									</th>
								</tr>
							</table>
						</form>
					</center>
					</br>
					</br>
				</th>
			</tr>
		</table>
	</center>
</body>
</html>