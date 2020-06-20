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

Route::get('/', function () {
    return view('login');
});

Route::view('register','register');
Route::view('login','login');
Route::view('list','list');

Route::post('register','HomeController@register');
Route::post('login','HomeController@login');


Route::post('familyform','HomeController@familyform');
Route::get('logout','HomeController@logout');

Route::get('list','HomeController@list');


