<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LawController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware('auth.check')->group(function () {
    Route::post('/users/register', [UserController::class, 'register']);
    Route::post('/users/logout', [UserController::class, 'logout']);
    Route::get('/users/{id}', [UserController::class, 'show']);
    Route::put('/users/{id}', [UserController::class, 'update']);
    Route::delete('/users/{id}', [UserController::class, 'destroy']);

    // Route::post('/api/laws', [LawController::class, 'store']);
    // Route::get('/api/laws', [LawController::class, 'index']);
    // Route::get('/api/laws/{law}', [LawController::class, 'show']);
    // Route::put('/api/laws/{law}', [LawController::class, 'update']);
    // Route::delete('/api/laws/{law}', [LawController::class, 'destroy']);
    // Route::get('/api/laws/filter', [LawController::class, 'filter']);
});