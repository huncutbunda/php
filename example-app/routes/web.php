<?php

use App\Http\Controllers\Admin\CarsController;
use App\Http\Controllers\Admin\MotorsController;

Route::prefix('admin')->middleware('admin')->group(function () {
    Route::resource('cars', CarsController::class)->names('admin.cars');
    Route::resource('motorcycles', MotorsController::class)->names('admin.motors');
});

?>