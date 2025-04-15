<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/greeting', function () {
    return 'Hello World';
})->name('greeting');

Route::get('user/{id}', function ($id) {
    return 'User '.$id;
});

//Route::redirect('/', '/greeting123');

Route::get('/about', function () {
    return view('about', ['name' => '123']);
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
