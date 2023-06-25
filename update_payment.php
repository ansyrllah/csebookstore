<?php
	session_start();

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		if (isset($_POST['submit'])) {
			$orderid = $_POST['orderid'];

			// connect to database
			require_once "./functions/database_functions.php";
			$conn = db_connect();

			// Update payment status
			$query = "UPDATE orders SET payment_status = true WHERE orderid = '$orderid'";
			$result = mysqli_query($conn, $query);
			if ($result) {
				// Payment status updated successfully
				$_SESSION['success_message'] = "Payment confirmed successfully.";
			} else {
				// Failed to update payment status
				$_SESSION['error_message'] = "Failed to confirm payment. Please try again.";
			}

			// Redirect back to the admin page
			header("Location: admin_orders.php");
			exit();
		}
	} else {
		// Invalid request
		$_SESSION['error_message'] = "Invalid request.";
		header("Location: admin_orders.php");
		exit();
	}
?>
