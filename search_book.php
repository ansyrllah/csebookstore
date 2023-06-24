<?php
	$title = "Search Book";
	require_once "./template/header.php";
	// require_once "./functions/cart_functions.php";
?>

<form class="form-horizontal" method="post" action="search_book.php">
	<div class="form-group">
		<label for="name" class="control-label col-md-4">Book Title</label>
		<div class="col-md-4">
			<input type="text" name="name" class="form-control">
		</div>
		<input type="submit" name="submit" class="btn btn-primary">
	</div>
</form>

<?php
	$title = "Search Book";
	// require_once "./template/header.php";
	// require_once "./functions/cart_functions.php";

	if (isset($_POST['submit'])) {
		$name = trim($_POST['name']);

		if ($name != "") {
			// Koneksi ke database
			require_once "./functions/database_functions.php";
			$conn = db_connect();

			$name = mysqli_real_escape_string($conn, $name);
			$query = "SELECT book_isbn, book_title, book_image, book_price, book_author FROM books WHERE book_title LIKE '%$name%'";
			$result = mysqli_query($conn, $query);
			if (!$result) {
				echo "Can't retrieve data " . mysqli_error($conn);
				exit;
			}

			echo "<h3>Search Results:</h3>";
			$count = 0;
			while ($row = mysqli_fetch_assoc($result)) {
				if ($count == 0) {
					echo "<div class='row'>";
				}
				echo "<div class='col-md-3'>";
				echo "<div class='book'>";
				echo "<a href='book.php?bookisbn=" . $row['book_isbn'] . "'>";
				echo "<img src='./bootstrap/img/" . $row['book_image'] . "' alt='Book Cover' class='img-responsive img-thumbnail'>";
				echo "</a>";
				echo "<h4>" . $row['book_title'] . "</h4>";
				echo "<p><strong>Author:</strong> " . $row['book_author'] . "</p>";
				echo "<p><strong>Price:</strong> $" . $row['book_price'] . "</p>";
				echo "</div>";
				echo "</div>";

				$count++;
				if ($count >= 4) {
					echo "</div>";
					$count = 0;
				}
			}

			if ($count > 0) {
				echo "</div>";
			}

			if (isset($conn)) {
				mysqli_close($conn);
			}
		} else {
			echo "Book Title is empty!";
		}
	}

	require_once "./template/footer.php";
?>
