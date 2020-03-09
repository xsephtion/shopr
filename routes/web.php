<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::post('/', function() {
//     return view('welcome');
// });

//Route::get('/', 'UserController@create')->name('index');

Route::get('/', function(){
    $query = DB::table('products')->get();
    $query = json_encode($query);
    $query = json_decode($query);
    return view('index', ['products' => $query]);
})->name('index');
Route::get('register', 'UserController@create')->name('register');
Route::post('register', 'UserController@store') -> name('Register.store');
Route::post('/', 'LoginController@store') -> name('Login.store');
Route::get('/success', 'SessionController@accessSessionData')->name('Success.store');
Route::get('/success', 'SessionController@accessSessionData')->name('Success.store');
Route::get('/products', 'ProductController@index') -> name('Product.view');
Route::get('/product/{post_id}', 'SingleProductController@index') -> name('SProduct.view');

Route::get('profile', 'ProfileController@index') -> name('Profile.view');