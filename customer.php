<?php
	$title = "Customer Login";
	require_once "./template/header.php";
?>
	<h1 class="text-center" >Login as customer</h1>
	<form class="form-horizontal" method="post" action="customer_verify.php">
		<div class="form-group">
			<label for="name" class="control-label col-md-4">Customer Name</label>
			<div class="col-md-4">
				<input type="text" name="name" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label for="pass" class="control-label col-md-4">Password</label>
			<div class="col-md-4">
				<input type="password" name="pass" class="form-control">
			</div>
		</div>
		<div class="text-center">
			<input type="submit" name="submit" class="btn btn-primary">
		</div>
	</form>

<?php
	require_once "./template/footer.php";
?>