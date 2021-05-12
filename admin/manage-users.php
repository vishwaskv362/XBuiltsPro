<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );



?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>XBuilts | Manage Users</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<style>
	
	.wrapper{
		background-image: url("images/wall3.jpg");
	    background-size:cover;
        height:100%;
	}

	</style>
	<style>
html, body {
  height: 100%;
  
}

</style>
</head>
<body>


	<div class="wrapper">
	<?php include('include/head2.php');?>
	<br>
		<div class="container">
		
			<div class="row">
			
			<?php include('include/sidebar.php');?>	
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Manage Users</h3>
							</div>
							<div class="module-body table">
	<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

								

							
								<table  class="center" cellpadding="0" cellspacing="0" border="0"  width=30%>
									<thead>
										<tr>
											<th width:30%>SL No</th>
											<th width:30%> Name</th>
											<th width:30%>Email </th>
											<th width:30%>Contact no</th>
											<th width:30%>Shippping Address/City/State/Pincode </th>
											<th width:30%>Billing Address/City/State/Pincode </th>
											<th width:30%>Reg. Date </th>
										
										</tr>
									</thead>
									<tbody>

<?php $query=mysqli_query($con,"select * from users");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>									
										<tr>
											<td><?php echo htmlentities($cnt);?></td>
											<td><?php echo htmlentities($row['name']);?></td>
											<td><?php echo htmlentities($row['email']);?></td>
											<td> <?php echo htmlentities($row['contactno']);?></td>
											<td><?php echo htmlentities($row['shippingAddress'].",".$row['shippingCity'].",".$row['shippingState']."-".$row['shippingPincode']);?></td>
											<td><?php echo htmlentities($row['billingAddress'].",".$row['billingCity'].",".$row['billingState']."-".$row['billingPincode']);?></td>
											<td><?php echo htmlentities($row['regDate']);?></td>
											
										<?php $cnt=$cnt+1; } ?>
									</tbody>
								</table>
							</div>
						</div>						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

		

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	
</body>
<?php } ?>