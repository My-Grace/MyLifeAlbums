<?php

namespace App\Http\Controllers;
use App\Models\Detail;
use Session;

use Illuminate\Http\Request;

class ImageUploadController extends Controller

{
  
    // Controler shows the data and implements logic part
    //
    public function upload_image()
    {
        return view('image_upload');
    }


    public function store_image(Request $req)
    {      
        $post = new Detail();
        $post->title = $req->title;
        $post->excerpt= $req->excerpt;
        $post->content = $req->content;

       // $imageName = time().'.'.$request->image->extension();  

        // Save the first image only
        if ($req->hasFile('image')) {
            $file = $req->file('image');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('uploads/images'), $filename);
            $post->image = $filename; // Store only the filename
        }
       // dd($post); 
       //stop and show the data 
        $post->save();

        return redirect('/detail')->with('success', 'Upload successfully');
    }





















    // public function upload_image()
    // {
    //     return view('image_upload');
    // }

    // public function store_image(Request $request)
    // {
    //     $request->validate([

    //         'image'=>'required|mimes:jpg,jpeg,png,bmp',
    //         // 'title' => 'required|string',
    //         // 'content' => 'required|string',
    //         // 'excerpt' => 'required|string',
    //     ]);

    //     $imageName = '';
    //     if ($image = $request->file('image')){
    //         $imageName = time().'-'.uniqid().'.'.$image->getClientOriginalExtension();
    //         $image->move('images/uploads', $imageName);
    //     }


    //     // $title = $request->input('title');
    //     // $content = $request->input('content');
    //     // $excerpt = $request->input('excerpt');


    //     Detail::create([
    //         'title'=>$title,
    //         'content'=>$content,
    //         'excerpt'=>$excerpt,
    //         'image'=>$imageName,
    //     ]);
    //     Session::flash('message', 'New image added success.'); 
    //     Session::flash('alert-class', 'alert-success'); 
    //     return redirect()->back();
    // }
}
