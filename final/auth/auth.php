<?php
	session_start();
	if (isset($_POST['kirim'])) {
		include '../config/functions.php';
		$username = $_POST['username'];
		$password = $_POST['password'];
		$data = mysqli_query($functions, "SELECT * from user where username = '$username' and password = '$password' limit 1 ") or die(mysqli_error($functions));
		$cek = mysqli_num_rows($data);
		if ($cek > 0) {
			header('location: ../index.php');
			$_SESSION['username'] = $username;
			$_SESSION['isLogin'] = true;
		}
		else{
			echo "username or password is not valid";
		}
	}
?>