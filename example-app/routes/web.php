<?php

use App\Http\Controllers\Admin\CarsController;
use App\Http\Controllers\Admin\MotorsController;
use App\Http\Controllers\BrowseController;

Route::prefix('admin')->middleware('admin')->group(function () {
    Route::resource('cars', CarsController::class)->names('admin.cars');
    Route::resource('motorcycles', MotorsController::class)->names('admin.motors');
});

Route::get('/browse/cars', [BrowseController::class, 'cars'])->name('browse.cars');
Route::get('/browse/motorcycles', [BrowseController::class, 'motorcycles'])->name('browse.motorcycles');


?>