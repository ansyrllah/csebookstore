<?php
	session_start();
	if(!isset($_POST['submit'])){
		echo "Something wrong! Check again!";
		exit;
	}
	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$name = trim($_POST['name']);
	$pass = trim($_POST['pass']);

	if($name == "" || $pass == ""){
		echo "Name or Pass is empty!";
		exit;
	}

	$name = mysqli_real_escape_string($conn, $name);
	$pass = mysqli_real_escape_string($conn, $pass);
	// $pass = sha1($pass);

	// get from db
	$query = "SELECT name, pass from customers WHERE name = '$name' AND pass = '$pass'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Empty data " . mysqli_error($conn);
		exit;
	}
	$row = mysqli_fetch_assoc($result);

	if (!$row) {
		echo "Name or pass is wrong. Check again!";
		$_SESSION['admin'] = false;
		exit;
	}
	// if ($row) {
	// 	if($name !== $row['name'] && $pass !== $row['pass']){
	// 		echo "Name or pass is wrong. Check again! name: $name pass $pass";
	// 		$_SESSION['customers'] = false;
	// 		exit;
	// 	}
	// 	echo "Name or pass is wrong. Check again!";
	// 	$_SESSION['customers'] = false;
	// 	exit;
	// }

	if(isset($conn)) {mysqli_close($conn);}
	$_SESSION['customers'] = true;
	header("Location: books.php");
?>