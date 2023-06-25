<?php
	// the shopping cart needs sessions, to start one
	/*
		Array of session(
			cart => array (
				book_isbn (get from $_GET['book_isbn']) => number of books
			),
			items => 0,
			total_price => '0.00'
		)
	*/
	session_start();
	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Checking Out";
	require "./template/header.php";

	// connect to database
	// $conn = db_connect();
	// $customerid = getCustomerId("admin2", "Komplek Vijaya", "Bandung", 250503, "Indonesia" );
   // $customer = getCustomerByCustomerID(1); // Gantikan dengan fungsi yang sesuai


	if(isset($_SESSION['cart']) && (array_count_values($_SESSION['cart']))){
?>
	<h1>Order Details</h1>
	<table class="table">
		<tr>
			<th>Item</th>
			<th>Price</th>
	    	<th>Quantity</th>
	    	<th>Total</th>
	    </tr>
	    	<?php
			    foreach($_SESSION['cart'] as $isbn => $qty){
					$conn = db_connect();
					$book = mysqli_fetch_assoc(getBookByIsbn($conn, $isbn));
			?>
		<tr>
			<td><?php echo $book['book_title'] . " by " . $book['book_author']; ?></td>
			<td><?php echo "Rp. " . $book['book_price']; ?></td>
			<td><?php echo $qty; ?></td>
			<td><?php echo "Rp. " . $qty * $book['book_price']; ?></td>
		</tr>
		<?php } ?>
		<tr>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th><?php echo $_SESSION['total_items']; ?></th>
			<th><?php echo "Rp. " . $_SESSION['total_price']; ?></th>
		</tr>
	</table>
	
	<div class="col">

		<h1>Delivery Details</h1>
		<ul class="list-group list-group-flush">
			<li class="list-group-item col"><?php echo $qty; ?></li>
			<!-- <li class="list-group-item col"><?php echo "Rp. " . $customer['name']; ?></li> -->
			<li class="list-group-item col">1</li>
			<li class="list-group-item col">1</li>
			<li class="list-group-item col">1</li>
		</ul>
	</div>

	<div class="col">
		<h1>Delivery Details</h1>
		<form method="post" action="purchase.php" class="form-horizontal">
			<?php if(isset($_SESSION['err']) && $_SESSION['err'] == 1){ ?>
				<p class="text-danger">All fields have to be filled</p>
				<?php } ?>
				<div class="form-group">
					<label for="name" class="control-label col-md-1">Name</label>
					<div class="col">
						<input type="text" name="name" class="col-md-4" class="form-control">
					</div>
			</div>
			<div class="form-group">
				<label for="address" class="control-label col-md-1">Address</label>
				<div class="col">
					<input type="text" name="address" class="col-md-4" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="city" class="control-label col-md-1">City</label>
				<div class="col">
					<input type="text" name="city" class="col-md-4" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="zip_code" class="control-label col-md-1">Zip Code</label>
				<div class="col">
					<input type="text" name="zip_code" class="col-md-4" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="country" class="control-label col-md-1">Country</label>
				<div class="col">
					<input type="text" name="country" class="col-md-4" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<input  type="submit" name="submit" value="Purchase" class="btn col-md-1 btn-primary">
			</div>
		</form>
	</div>
	<p class="lead">Please press Purchase to confirm your purchase, or Continue Shopping to add or remove items.</p>
<?php
	} else {
		echo "<p class=\"text-warning\">Your cart is empty! Please make sure you add some books in it!</p>";
	}
	if(isset($conn)){ mysqli_close($conn); }
	require_once "./template/footer.php";
?>