<?php
	session_start();

	$_SESSION['customers'] = false;
	header("Location: customer.php");
?>