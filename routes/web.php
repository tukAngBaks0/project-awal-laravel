<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PelangganController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\CetakController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('dashboard', [
        "title" => "Dashboard"
    ]);
})->middleware('auth');

Route::resource('pelanggan', PelangganController::class)
    ->except('destroy');

Route::resource('user', UserController::class)
    ->except('destroy', 'create', 'show', 'update', 'edit');

Route::resource('produk', ProdukController::class);

Route::get('login', [LoginController::class, 'loginView'])->name('login');
Route::post('login', [LoginController::class, 'authenticate']);
Route::post('logout', [LoginController::class, 'loginView'])->name('auth.logout');

Route::get('penjualan', function () {
    return view('penjualan.index', [
        "title" => "Penjualan"
    ]);
})->name('penjualan')->middleware('auth');

Route::get('transaksi', function () {
    return view('penjualan.transaksis', [
        "title" => "Transaksi"
    ]);
})->middleware('auth');

Route::get('cetakReceipt', [CetakController::class,'receipt'])->name('cetakReceipt')->middleware('auth');
