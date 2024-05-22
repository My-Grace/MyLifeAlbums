<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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


        .glitter {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('https://i.imgur.com/e0hMn5H.png'); /* Glitter image URL */
            animation: glitterAnimation 3s linear infinite;
            opacity: 0.8; /* Adjust opacity for subtle effect */
            pointer-events: none; /* Allow clicks to pass through */
        }

        @keyframes glitterAnimation {
            0% {
                transform: translate(0, 0);
            }
            100% {
                transform: translate(-200%, -200%);
            }
        }

        .card {
            border: none; /* Remove default card border */
            border-radius: 10px; /* Add border radius */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
        }

        .card-header {
            background-color: #14A3C7; /* Set header background color */
            border-radius: 10px 10px 0 0; /* Add border radius to top corners */
            color: #822EFF; /* Set header text color */
        }

        .title h2 {
            margin-bottom: 0; /* Remove margin bottom for title */
        }

        .card-body {
            padding: 30px; /* Add padding to card body */
        }

        .form-control {
            border-radius: 5px; /* Add border radius to form controls */
        }

        .btn-secondary {
            border-radius: 5px; /* Add border radius to buttons */
            width: 100%; /* Make button full width */
            /* color: #14A3C7; */
        }

        .form-label {
            font-weight: bold; /* Make the label text bold */
            color: #495057; /* Set label text color */
        }


    </style>
    <title> Image Upload</title>
</head>
<body >
<div class="container">
    <div class="row mt-5 justify-content-center"> <!-- Center the form horizontally -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <div class="title">
                        <h2 class="text-center">Add Your Life Moments</h2> <!-- Center the title -->
                    </div>
                </div>
                <div class="card-body">
                    <?php if($errors->any()): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    <?php endif; ?>
                    <?php if(Session::has('message')): ?>
                        <p class="alert <?php echo e(Session::get('alert-class', 'alert-info')); ?>"><?php echo e(Session::get('message')); ?></p>
                    <?php endif; ?>

                    <form action="<?php echo e(route('store.image')); ?>" method="post" enctype="multipart/form-data">
                        <?php echo csrf_field(); ?>
                        <div class="mb-3">
                            <label class="mb-1 form-label">Title</label>
                            <input type="text" name="title" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="mb-1 form-label">Quote</label>
                            <input type="text" name="excerpt" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="mb-1 form-label">Description</label>
                            <input type="text" name="content" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="mb-1 form-label">Image</label>
                            <input type="file" class="form-control" name="image" accept="jpg,jpeg,png">
                        </div>

                    
                        <button type="submit" class="btn btn-lg btn-outline-secondary">Submit</button> <!-- Center the button and make it full width -->
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<?php /**PATH /opt/lampp/htdocs/my_album_project/resources/views/image_upload.blade.php ENDPATH**/ ?>