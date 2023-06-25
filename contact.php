<?php
  $title = "Contact";
  require_once "./template/header.php";
?>
    <div class="row">
        <div class="col-md-3"></div>
		<div class="col-md-6 text-center">
			<form class="form-horizontal">
			  	<fieldset>
				    <legend>Contact</legend>
				    <p class="lead">I’d love to hear from you! Complete the form to send me an email.</p>
				    <div class="form-group">
				      	<label for="inputName" class="col-lg-2 control-label">Name</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control" id="inputName" placeholder="Name">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label for="inputEmail" class="col-lg-2 control-label">Email</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control" id="inputEmail" placeholder="Email">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label for="textArea" class="col-lg-2 control-label">Textarea</label>
				      	<div class="col-lg-10">
				        	<textarea class="form-control" rows="3" id="textArea"></textarea>
				        	<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
				      	</div>
				    </div>
				    <div class="form-group">
				      	<div class="col-lg-10 col-lg-offset-2">
				        	<button type="reset" class="btn btn-default">Cancel</button>
				        	<button type="submit" class="btn btn-primary">Submit</button>
				      	</div>
				    </div>
			  	</fieldset>
			</form>
		</div>
		<div class="col-md-3"></div>
    </div>
<?php
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