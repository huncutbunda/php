<?php
use App\Http\Controllers\Api\CarController;
use App\Http\Controllers\Api\MotorcycleController;
use App\Http\Controllers\Api\BrandController;

Route::prefix('cars')->group(function () {
    Route::get('/', [CarController::class, 'index']);
    Route::get('/{id}', [CarController::class, 'show']);
    Route::post('/', [CarController::class, 'store']);
    Route::put('/{id}', [CarController::class, 'update']);
    Route::delete('/{id}', [CarController::class, 'destroy']);
});

Route::prefix('motorcycles')->group(function () {
    Route::get('/', [MotorcycleController::class, 'index']);
    Route::get('/{id}', [MotorcycleController::class, 'show']);
    Route::post('/', [MotorcycleController::class, 'store']);
    Route::put('/{id}', [MotorcycleController::class, 'update']);
    Route::delete('/{id}', [MotorcycleController::class, 'destroy']);
});

Route::get('/brands', [BrandController::class, 'index']);
?>