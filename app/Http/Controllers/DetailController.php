<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Detail;
use Illuminate\Support\Facades\DB;

class DetailController extends Controller
{
    // public function index(){

    //     //$detail= Detail::all()->first();
        
    //  //   $detail = DB::table('details')->get();
    //     $details = Detail::get();

    //    // dd($details);
    //     return view('welcome' , ['details'=>$details]);    //variable name.. stores in array

    // }


    // public function index(Request $request){
       
    // //     $details = Detail::get();
    // //   //  dd($details);
    // //     return view('detail', ['details' => $details]);
    // }



    public function detailPost(){


        $details = Detail::get();
        //  dd($details);
          return view('detail', ['details' => $details]);
       // return view("detail");      //detail is blade file in views if subfolder use "folder.file"
    }


    
    public function delete_record($id) {
      //  return $id;
      Detail::destroy($id); 
        return back();

    }
    
    public function edit_record($id) {
    
       $edit = Detail::find($id);
      // dd($edit);
          
        return view('edit_record' , compact('edit'));
  
      }


      public function update_data(Request $req, $id) {
        // Validate the incoming request data, especially the image
        $req->validate([
            'title' => 'required|string|max:255',
            'excerpt' => 'required|string|max:500',
            'content' => 'required|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate image file
        ]);
    
        // Retrieve the existing detail by ID
        $edit = Detail::findOrFail($id);
    
        // Update text fields
        $edit->title = $req->title;
        $edit->excerpt = $req->excerpt;
        $edit->content = $req->content;
    
        // Check if a new image is uploaded
        if ($req->hasFile('image')) {
            $file = $req->file('image');
    
            // Generate a unique filename using the current timestamp
            $filename = time() . '.' . $file->getClientOriginalExtension();
    
            // Move the uploaded file to the public/uploads/images directory
            $file->move(public_path('uploads/images'), $filename);
    
            // Save the filename to the database
            $edit->image = $filename;
        }
    
        // Update the detail record in the database
        $edit->save();
    
        // Redirect to the detail page
        return redirect('/detail')->with('success', 'Data updated successfully!');
    }
    
 

}

















// public function store(Request $request){
//     $request->validate([
//         'title' => 'required',
//         'excerpt' => 'required',
//         'content' => 'required',
//         'images.*' => 'image|mimes:jpeg,png,jpg,gif|max:2048' // Validate each image file
//     ]);

//     $detail = new Detail();
//     $detail->title = $request->title;
//     $detail->excerpt = $request->excerpt;
//     $detail->content = $request->content;

//     if ($request->hasFile('images')) {
//         $imagePaths = [];
//         foreach ($request->file('images') as $image) {
//             $imageName = time() . '_' . $image->getClientOriginalName();
//             $image->move(public_path('images'), $imageName);
//             $imagePaths[] = '/images/' . $imageName;
//         }
//         $detail->images = implode(',', $imagePaths);
//     }

//     $detail->save();

//     return redirect()->route('details.index');

// }




// @foreach(explode(',', $detail->images) as $image)
//     <img src="{{ $image }}" alt="Image">
// @endforeach