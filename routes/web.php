<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ForumController;
use App\Http\Controllers\SetLocaleController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\DocumentController;

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
    return view('welcome');
});
Route::get('/etudiants', [EtudiantController::class, 'index'])->name('etudiant.index');
Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get('/create/etudiant', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/create/etudiant', [EtudiantController::class, 'store'])->name('etudiant.store');
Route::get('/edit/etudiant/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/edit/etudiant/{etudiant}', [EtudiantController::class, 'update'])->name('etudiant.update');
Route::delete('/etudiant/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');

Route::get('/users', [UserController::class, 'index'])->name('user.index');
Route::get('/registration/{etudiant}', [UserController::class, 'create'])->name('user.create');
Route::post('/registration/{etudiant}', [UserController::class, 'store'])->name('user.store');
// Route::get('/edit/user/{user}', [UserController::class, 'edit'])->name('user.edit');

Route::get('/login', [AuthController::class, 'create'])->name('login');
Route::post('/login', [AuthController::class, 'store'])->name('login.store');
Route::get('/logout', [AuthController::class, 'destroy'])->name('logout');


Route::get('/lang/{locale}', [SetLocaleController::class, 'index'])->name('lang');

Route::middleware('auth')->group(function() {
    Route::get('/forum', [ArticleController::class, 'index'])->name('article.index')->middleware('auth');
    Route::get('/create/article', [ArticleController::class, 'create'])->name('article.create');
    Route::post('/create/article', [ArticleController::class, 'store'])->name('article.store');
    Route::get('/edit/article/{article}', [ArticleController::class, 'edit'])->name('article.edit');
    Route::put('/edit/article/{article}', [ArticleController::class, 'update'])->name('article.update');
    Route::delete('/article/{article}', [ArticleController::class, 'destroy'])->name('article.delete');
    
    Route::get('/documents', [DocumentController::class, 'index'])->name('document.index');
    Route::get('/create/document', [DocumentController::class, 'create'])->name('document.create');
    Route::post('/create/document', [DocumentController::class, 'store'])->name('document.store');
    Route::get('/download/{document}', [DocumentController::class, 'download'])->name('document.download');
    Route::get('/edit/document/{document}', [DocumentController::class, 'edit'])->name('document.edit');
    Route::put('/edit/document/{document}', [DocumentController::class, 'update'])->name('document.update');
    Route::delete('/document/{document}', [DocumentController::class, 'destroy'])->name('document.delete');
});