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
  /* Make the image fully responsive */
  .carousel-inner img {
    
    height: 600px;
  }
  </style>
</head>
<body>

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/rog.jpg" class="d-block w-100" alt="ROG">
    </div>
    <div class="carousel-item">
      <img src="images/cmas.png" class="d-block w-100" alt="i9">
    </div>
    <div class="carousel-item">
      <img src="images/3090.jpg" class="d-block w-100" alt="3090">
    </div>
    <div class="carousel-item">
      <img src="images/i9.jpg" class="d-block w-100" alt="i9">
    </div>
    <div class="carousel-item">
      <img src="images/hd.jpg" class="d-block w-100" alt="i9">
    </div>
    <div class="carousel-item">
      <img src="images/dd.jpg" class="d-block w-100" alt="i9">
    </div>
    <div class="carousel-item">
      <img src="images/pred.jpg" class="d-block w-100" alt="i9">
    </div>
    <div class="carousel-item">
      <img src="images/wp.jpg" class="d-block w-100" alt="i9">
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
</html>