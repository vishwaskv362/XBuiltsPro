<?php
session_start();
error_reporting(0);
include('includes/config.php');
$cid=intval($_GET['cid']);
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
				echo "<script>alert('Product has been added to the cart')</script>";
		echo "<script type='text/javascript'> document.location ='my-cart.php'; </script>";
		}else{
			$message="Product ID is invalid";
		}
	}
	
}
// COde for Wishlist
if(isset($_GET['pid']) && $_GET['action']=="wishlist" ){
	if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else
{
mysqli_query($con,"insert into wishlist(userId,productId) values('".$_SESSION['id']."','".$_GET['pid']."')");
echo "<script>alert('Product added in wishlist');</script>";
header('location:my-wishlist.php');

}
}
?>


<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .btn1:hover {
        background-color: DodgerBlue;
  border: none;
  color: red;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;

  
}

</style>
</head>
<div class="sidebar-widget wow fadeInUp outer-bottom-xs ">
	<div class="widget-header m-t-20">
		<h4 class="widget-title">Category</h4>
	</div>
	<div class="sidebar-widget-body m-t-10">
	         <?php $sql=mysqli_query($con,"select id,categoryName  from category");
while($row=mysqli_fetch_array($sql))
{
    ?>
		<div class="accordion">
	    	<div class="accordion-group">
	            <div class="accordion-heading">
	                <a href="category.php?cid=<?php echo $row['id'];?>"  class="accordion-toggle collapsed">
	                   <?php echo $row['categoryName'];?>
	                </a>
	            </div>  
	        </div>
	    </div>
	    <?php } ?>
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget -->
<?php
$ret=mysqli_query($con,"select * from products ");
$num=mysqli_num_rows($ret);
if($num>0)
{
while ($row=mysqli_fetch_array($ret)) 
{?>		
<div class="row">
<div class="card-columns">
<div class="card" style="width: 18rem;">
  <img class="card-img-top"  <div a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="" width="200" height="300"></div>>
  <div class="card-body">
    <h5 class="card-title"><h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3></h5>
    <p class="card-text"><div class="product-price">	
				<span class="price">
					Rs. <?php echo htmlentities($row['productPrice']);?></span>
						<span class="price-before-discount">Rs. <?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
                    </div></p>
                    <div class="action">
                    <a href="products.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="btn btn-primary">Add to cart</a>
                    <button class="btn1" href="category.php?pid=<?php echo htmlentities($row['id'])?>&&action=wishlist"><i class="fa fa-heart-o"></i></button>
  
				</div>
   </div>
   </div>
   </div>
</div>
<?php } } else {?>
	
    <div class="col-sm-6 col-md-4 wow fadeInUp"> <h3>No Product Found</h3>
    </div>
    
<?php } ?>