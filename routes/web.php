<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Aquí es donde puedes registrar rutas web para tu aplicación. Estas rutas
| se cargan mediante el middleware "web" y todas ellas se asignarán al grupo
| "web". ¡Haz algo genial!
|
*/

Route::get('/usuarios', 'UsuarioController@index');
Route::get('/usuarios/{id}', 'UsuarioController@show');
Route::get('/usuarios/create', 'UsuarioController@create');
Route::post('/usuarios', 'UsuarioController@store');
Route::get('/usuarios/{id}/edit', 'UsuarioController@edit');
Route::put('/usuarios/{id}', 'UsuarioController@update');
Route::delete('/usuarios/{id}', 'UsuarioController@destroy');

