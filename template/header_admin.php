<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title><?php echo $title; ?></title>

  <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
  <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">CSE Bookstore</a>
      </div>

      <!--/.navbar-collapse -->
      <div id="navbar" class="navbar-collapse collapse">
        <?php
          if(isset($_SESSION['admin']) && $_SESSION['admin'] === true) {
            // Jika customer berhasil login
        ?>
        <ul class="nav navbar-nav navbar-right">
          <!-- link to admin_add.php -->
          <li><a href="admin_add.php"><span class="glyphicon glyphicon-plus"></span>&nbsp; Add New Book</a></li>
          <!-- link to admin_orders.php -->
          <li><a href="admin_orders.php"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Manage Sales</a></li>
          <!-- link to admin_book.php -->
          <li><a href="admin_book.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Manage Books</a></li>
          <!-- link to admin.php -->
          <li><a href="admin_signout.php"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
        </ul>
        <?php } else { ?>
          <ul class="nav navbar-nav navbar-right">
          <li><a href="customer.php"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign in</a></li>
        </ul>
        <?php } ?>
      </div>
    </div>
  </nav>
  <?php
    if(isset($title) && $title == "Homepage") {
  ?>
  <!-- Main jumbotron for a primary marketing message or call to action -->
  <div class="jumbotron">
    <div class="container">
      <h1>Welcome to <br> Creative Store of E-Books</h1>
      <p class="lead">Explore your favorite e-books in our online store</p>
      <p>Boost your creativity and enjoy the convenience of reading e-books!</p>
    </div>
  </div>
  <?php } ?>

  <div class="container" id="main">
