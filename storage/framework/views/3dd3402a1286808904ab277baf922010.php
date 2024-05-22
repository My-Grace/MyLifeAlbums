<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
      <title>Life Album</title>
      <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">
      <!-- Bootstrap core CSS -->
      <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="album.css" rel="stylesheet">
   </head>
   <style>

      body {
            background: linear-gradient(45deg, rgba(255, 0, 0, 0.5), rgba(255, 127, 0, 0.5), rgba(255, 255, 0, 0.5), rgba(0, 255, 0, 0.5), rgba(0, 0, 255, 0.5), rgba(75, 0, 130, 0.5), rgba(148, 0, 211, 0.5));
            background-size: 400% 400%;
            animation: rainbowAnimation 10s ease infinite;
        }

        @keyframes rainbowAnimation {
            0% {
                background-position: 0% 50%;
            }
            100% {
                background-position: 100% 50%;
            }
        }

/*     
        body {
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
} */

.rainbow-div {
    width: 200px;
    height: 200px;
    background: linear-gradient(45deg, rgba(255, 0, 0, 0.5), rgba(255, 127, 0, 0.5), rgba(255, 255, 0, 0.5), rgba(0, 255, 0, 0.5), rgba(0, 0, 255, 0.5), rgba(75, 0, 130, 0.5), rgba




    .btnhover{
      color: gray; 
      text-decoration: none; 
      
        onmouseover="this.style.color='white';" 
        onmouseout="this.style.color='gray';"

	}




  </style>

   <body >
      <header>
         <div class="collapse bg-dark" id="navbarHeader">
            <div class="container">
               <div class="row">
                  <div class="col-sm-8 col-md-7 py-4">
                     <h4 class="text-white">About</h4>
                     <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                  </div>
                  <div class="col-sm-4 offset-md-1 py-4">
                     <h4 class="text-white">Contact</h4>
                     <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <div class="navbar navbar-dark bg-dark box-shadow">
            <div class="container d-flex justify-content-between">
               <a href="#" class="navbar-brand d-flex align-items-center">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
                     <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                     <circle cx="12" cy="13" r="4"></circle>
                  </svg>
                  <strong>Life Album</strong>
               </a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
            </div>
         </div>
      </header>
      <main role="main">
         <section class="jumbotron text-center">
            <div class="container">
               <h1 class="jumbotron-heading">Precious Life Moments</h1>
               <p class="lead text-muted"></p>
               <!-- <p>
                  <a href="#" class="btn btn-primary my-2">Quotes</a>
                  <a href="#" class="btn btn-secondary my-2">Description</a>
               </p> -->
            </div>
         </section>
        <div class="">
         <div class="album py-5 bg-light">
            <div class="container">
               <div class="row">
                  <?php $__currentLoopData = $details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $detail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <div class="col-md-4">
                     <small class="text-muted"><?php echo e($detail->created_at); ?></small>
                     <div class="card mb-4 box-shadow">
                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" src="<?php echo e(url('public/uploads/images/'.$detail->image)); ?>"  width="300" 
                           height="300" alt="Card image ">
                        <!-- <img src="<?php echo e(url ('public/uploads/images/pexels-lilartsy-1721092.jpg')); ?>" alt=""> -->
                        <div class="card-body">
                        <!-- <p class="card-text"><?php echo e($detail->id); ?></p> -->
                           <p class="card-text"><?php echo e($detail->title); ?></p>
                           <p class="card-text"><?php echo e($detail->excerpt); ?></p>
                           
                           <p class="card-text"><?php echo e($detail->content); ?></p>
                           <div class="btn-group">
                               <button type="button" class="btn btn-sm btn-outline-secondary"><a href="delete_record/<?php echo e($detail->id); ?>"  style="color: gray; text-decoration: none; " 
        onmouseover="this.style.color='white';" 
        onmouseout="this.style.color='gray';">Remove</a></button>
                              <button type="button" class="btn btn-sm btn-outline-secondary"><a href="edit_record/<?php echo e($detail->id); ?>" style="color: gray; text-decoration: none; " 
        onmouseover="this.style.color='white';" 
        onmouseout="this.style.color='gray';">Edit </a></button>
                           </div>
                        </div>
                     </div>
                  </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
               </div>
            </div>
         </div>
         </div>
      </main>
      <footer class="text-muted">
         <div class="container">

            <p class="float-right">
            <button type="button" class="btn btn-sm btn-outline-secondary" ><a href="#" style="color: gray;"> Back To Top </a></button>
            </p>
            <p><div class="footer-left">
    <a href="#"  style="color: black;">All Right Reserved © Garima Bisht- 2024</a> 
  </div>
  <div class="footer-right">
    Terms & Conditions 
  </div></p>
            
         </div>
      </footer>
      <!-- Bootstrap core JavaScript
         ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper.min.js"></script>
      <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
      <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/holder.min.js"></script>

   </body >
</html>



<?php /**PATH /opt/lampp/htdocs/my_album_project/resources/views/detail.blade.php ENDPATH**/ ?>