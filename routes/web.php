<?php

use Illuminate\Support\Facades\Route;
//when use class or controller in another place 
use App\Http\Controllers\DetailController;
use App\Http\Controllers\ImageUploadController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[ImageUploadController::class,'upload_image'])->name('upload.image');
Route::post('/store-image',[ImageUploadController::class,'store_image'])->name('store.image');


//Route::get('/' , [DetailController::class, 'index']);
Route::get('/detail' , [DetailController::class, 'detailPost']);  // detailPost is the method or function we create in controller

Route::get('delete_record/{id}' , [DetailController::class, 'delete_record']);

Route::get('edit_record/{id}' , [DetailController::class, 'edit_record']);

Route::post('update_data/{id}' , [DetailController::class, 'update_data'])->name('update_data');

// Route::post('update_data/{id}' , [DetailController::class, 'update_data'])-> name('update.data');