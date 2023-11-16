<?php

namespace Server\Routes;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LawController;
use App\Http\Controllers\UserController;

// User authentication routes
Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
Route::middleware('auth:sanctum')->post('/logout', [UserController::class, 'logout']);

// User resource routes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/users/{id}', [UserController::class, 'show']);
    Route::put('/users/{id}', [UserController::class, 'update']);
    Route::delete('/users/{id}', [UserController::class, 'destroy']);
});