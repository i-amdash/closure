<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/test', 'App\Http\Controllers\TestController@index');

// Route::group(['namespace' => 'Api'], function() {
//     Route::any('/login', 'LoginController@login');
//     Route::any('/get_profile', 'LoginController@getProfile');
//     Route::any('/contact', 'LoginController@contact')->middleware('CheckUser');
// });