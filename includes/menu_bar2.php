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

.navbar-nav
{

  color:yellow;
  font-size: medium;
  margin: 0px;
  margin-left:30px;
  margin-right:30px;
  font-size: 25px;
  text-align: center;
  text-decoration: none;
  font-family:'Courier New','sans-serif';
}
.dropdown-yamm
{
  color:yellow;
  padding-left:30px;
  padding-right:30px;
  font-size: 25px;
  font-style: normal;
  text-align: center;
  text-decoration: none;
  font-family: 'Courier New','sans-serif';
}
.dropdown-yamm:hover {
  background-color: #111;
}
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav" color>
      <li >
      <a class="nav-item nav-link" href="index.php" style="color: yellow">Home</a>
      </li>
      <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 6");
while($row=mysqli_fetch_array($sql))
{
    ?>

			<li class="dropdown-yamm">
				<a  class="nav-item nav-link" style="color: yellow" href="category.php?cid=<?php echo $row['id'];?>"> <?php echo $row['categoryName'];?></a>
			
			</li>
			<?php } ?>
     
    </ul>
    <div class="clearfix"></div>
  </div>
  
</nav>
</body>
</html>
 
