<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  .nav-item{
    padding-left:30px;
  padding-right:30px;

  }
  .nav-item:hover {
  background-color: #111;
}
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
    <li><a>
    <?php if(strlen($_SESSION['login']))
    {   ?>
				<li class="rkun12"><a style="color: yellow">Welcome:<?php echo htmlentities($_SESSION['username']);?></a></li>
        <?php } ?>
        <!--
      <li class="nav-item ">
        <a class="nav-link" style="color: yellow"href="my-account.php">My Account </a>
      </li>
       
      <li class="nav-item">
        <a class="nav-link" style="color: yellow" href="my-wishlist.php">Wishlist</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: yellow" href="my-cart.php">My Cart</a>
      </li>
       -->
      <?php if(strlen($_SESSION['login'])==0)
    {   ?>
      <li class="nav-item">
      <a class="nav-link" style="color: yellow" href="login.php">Login</a>
      </li>
      <?php }
      else{ ?>
       <li class="nav-item">
        <a class="nav-link" style="color: yellow" href="my-wishlist.php">Wishlist</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: yellow" href="my-cart.php">My Cart</a>
      </li>
      <li class="nav-item">
      <a class="nav-link"style="color: yellow" href="order-history.php">Order history</a>
      </li>
      <li class="nav-item">
      <a class="nav-link"style="color: yellow" href="logout.php">Logout</a>
      </li>
      
      <?php } ?>
    </ul>
  </div>
  <style>
	@import url(https://fonts.googleapis.com/css?family=Open+Sans);

.search {
  width: 100%;
  position: relative;
  display: flex;
}

.searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 105px;
  height: 45px;
  border: 1px solid #FFFF00;
  background:#ced907;
  text-align: left ;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 1000%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>

<?php 

 if(isset($_Get['action'])){
		if(!empty($_SESSION['cart'])){
		foreach($_POST['quantity'] as $key => $val){
			if($val==0){
				unset($_SESSION['cart'][$key]);
			}else{
				$_SESSION['cart'][$key]['quantity']=$val;
			}
		}
		}
	}
?>
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->

</nav>
</body>
</html>


