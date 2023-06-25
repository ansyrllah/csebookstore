<?php
	session_start();
	require_once "./functions/admin.php";
	$title = "Sales";
	require_once "./template/header_admin.php";
	require_once "./functions/database_functions.php";
	$conn = db_connect();
	$result = getAllOrders($conn);
?>
<!-- Di dalam bagian body halaman admin.php -->
<div class="container">
	<!-- Check for success message -->
	<?php if (isset($_SESSION['success_message'])) { ?>
		<div class="alert alert-success">
			<?php echo $_SESSION['success_message']; ?>
		</div>
		<?php unset($_SESSION['success_message']); ?>
	<?php } ?>

	<!-- Check for error message -->
	<?php if (isset($_SESSION['error_message'])) { ?>
		<div class="alert alert-danger">
			<?php echo $_SESSION['error_message']; ?>
		</div>
		<?php unset($_SESSION['error_message']); ?>
	<?php } ?>
	<h1>Manage your sales</h1>
	<table class="table" style="margin-top: 20px">
		<tr>
			<th>Order ID</th>
			<th>Customer ID</th>
			<th>Total Price</th>
			<th>Date</th>
			<th>Ship Name</th>
			<th>Ship Address</th>
			<th>Ship City</th>
			<th>Ship Zip Code</th>
			<th>Ship Country</th>
			<th>Payment Status</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</tr>
		<?php while($row = mysqli_fetch_assoc($result)){ ?>
	<tr>
		<td><?php echo $row['orderid']; ?></td>
		<td><?php echo getCustomerName($conn, $row['customerid']); ?></td>
		<td><?php echo "Rp. " . $row['amount']; ?></td>
		<td><?php echo $row['date']; ?></td>
		<td><?php echo $row['ship_name']; ?></td>
		<td><?php echo $row['ship_address']; ?></td>
		<td><?php echo $row['ship_city']; ?></td>
		<td><?php echo $row['ship_zip_code']; ?></td>
		<td><?php echo $row['ship_country']; ?></td>
		<td>
			<?php if($row['payment_status'] == false) { ?>
				<form method="post" action="update_payment.php">
					<input type="hidden" name="orderid" value="<?php echo $row['orderid']; ?>">
					<input type="submit" name="submit" class="btn btn-primary" value="Confirm Payment">
				</form>
			<?php } else { ?>
				<button>Payment Confirmed</button>
				
			<?php } ?>
		</td>
	</tr>
<?php } ?>

	</table>


	<!-- Rest of the admin page content -->
	<!-- ... -->
</div>

<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>