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
//     $query = DB::table('products')->get();
//     $query = json_encode($query);
//     $query = json_decode($query);
//     //dd(Session::get('user'));
//     return view('home', ['products' => $query]);
// });

Auth::routes();
Route::get('/', 'HomeController@index')->name('home');
Route::get('/products', 'ProductController@index') -> name('Product.view');
Route::get('/product/{post_id}', 'SingleProductController@index') -> name('SProduct.view');
// Route::get('profile', 'ProfileController@index') -> name('Profile.view')->middleware('web');

// Route::group(['middleware' => ['web']], function(){
//     Route::get('/', function () {
//         $query = DB::table('products')->get();
//         $query = json_encode($query);
//         $query = json_decode($query);
//         //dd(Session::get('user'));
//         return view('home', ['products' => $query]);
//     });
//     Auth::routes();
//     Route::get('/home', 'HomeController@index')->name('home');
//     Route::get('/products', 'ProductController@index') -> name('Product.view');
//     Route::get('/product/{post_id}', 'SingleProductController@index') -> name('SProduct.view');
// });