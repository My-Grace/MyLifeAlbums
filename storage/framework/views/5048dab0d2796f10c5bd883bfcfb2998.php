<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title> Image Upload</title>
</head>
<body>
<div class="container">
    <div class="row mt-3">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="title" style="float:left;">
                        <h2 class="text-left">Add New Album</h2>
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
                        <div class="row">
                            <div class="col-md-6">

                                <div class="mb-3">
                                    <label class="mb-1">Title</label>
                                    <input type="text" name="title" class="form-control" >
                                </div>

                                <div class="mb-3">
                                    <label class="mb-1">Quote</label>
                                    <input type="text" name="excerpt" class="form-control" >
                                </div>

                                <div class="mb-3">
                                    <label class="mb-1">Description</label>
                                    <input type="text" name="content" class="form-control" >
                                </div>



                                <div class="mb-3">
                                    <label class="mb-1">Image</label>
                                    <!-- <input type="file" name="image" class="form-control" value="<?php echo e(old('image')); ?>"> -->
                                    <input type="file" class="form-control" name="image" accept="jpg,jpeg,png,bmp" >
                                </div>
                               
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html><?php /**PATH /home/garima/my_album_project/resources/views/image_upload.blade.php ENDPATH**/ ?>