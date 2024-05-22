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



    </style>

    <title>Edit</title>
</head>






<body>
<div class="container">
    <div class="row mt-3">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="title" style="float:left;">
                        <h2 class="text-left">Edit Your Albums</h2>
                    </div>
                </div>
                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(Session::has('message'))
                        <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
                    @endif

                   
                    <form action="{{ url('update_data/'.$edit->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">

                                <div class="mb-3">
                                    <label class="mb-1">Title</label>
                                    <input type="text" name="title" value="{{$edit->title}}" class="form-control" >
                                </div>

                                <div class="mb-3">
                                    <label class="mb-1">Quote</label>
                                    <input type="text" name="excerpt" value="{{$edit->excerpt}}" class="form-control" >
                                </div>

                                <div class="mb-3">
                                    <label class="mb-1">Description</label>
                                    <input type="text" name="content" value="{{$edit->content}}" class="form-control" >
                                </div>



                                <div class="mb-3">
                                    <label class="mb-1">Image</label>
                                    <!-- <input type="file" name="image" class="form-control" value="{{ old('image') }}"> -->
                                    
                                    <input type="file" class="form-control" name="image" value="{{$edit->image}}" >
                                    
                                </div>
                               
                            </div>
                            <button type="submit" class="btn btn-sm btn-outline-secondary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>