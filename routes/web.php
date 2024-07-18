<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DeudoresController;
use App\Http\Controllers\ExpedientesController;
use App\Http\Controllers\DireccionesController;
use App\Http\Controllers\TipoPersonasController;
use App\Http\Controllers\RegionesController;
use App\Http\Controllers\GenerateTokensController;
use App\Http\Controllers\CronogramasController;
use App\Http\Controllers\PagosController;
use App\Http\Controllers\VregistralsController;
use App\Http\Controllers\ConstanciasdatosController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ConstanciasemitidosController;

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

Route::get('/',function(){
    return view('auth.login');
})->name('credentials');

Route::middleware('auth:api')->get('/check-auth', [App\Http\Controllers\AuthController::class, 'checkAuth']);

//Home
Route::get('/home', [HomeController::class, 'index'])->middleware(['auth'])->name('home');

//Register and Login user
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');


//Usuarios
Route::get('/users', [UserController::class,'users'])->middleware(['auth'])->name('users');
Route::get('/users/edit/{id}', [UserController::class,'edit'])->middleware(['auth'])->name('usuario.edit');
Route::get('/users/create', [UserController::class,'create'])->middleware(['auth'])->name('usuario.create');
Route::post('/users/update', [UserController::class,'update'])->middleware(['auth'])->name('usuario.update');
Route::post('/users/changepassword', [UserController::class,'changepassword'])->middleware(['auth'])->name('change.password');

Route::post('/profile', function () { return auth()->user(); });
Route::patch('/change_status/user/{id_user}', [UserController::class,'change_status']);
Route::post('/register', [UserController::class,'register'])->name('register');

//Ejecutados
Route::get('/ejecutado/create', [DeudoresController::class,'create'])->middleware(['auth'])->name('create.ejecutado');
Route::get('/ejecutado/index', [DeudoresController::class,'index'])->middleware(['auth'])->name('index.ejecutado');
Route::post('/ejecutado/store', [DeudoresController::class,'store'])->middleware(['auth'])->name('store.ejecutado');
Route::get('/ejecutado/edit/{id}', [DeudoresController::class,'edit'])->middleware(['auth'])->name('edit.ejecutado');
Route::post('/ejecutado/update', [DeudoresController::class,'update'])->middleware(['auth'])->name('update.ejecutado');
Route::post('/ejecutado/destroy', [DeudoresController::class,'destroy'])->middleware(['auth'])->name('destroy.ejecutado');
Route::get('/ejecutado/show/{doc}', [DeudoresController::class,'show'])->middleware(['auth'])->name('show.ejecutado');

//Expedientes
Route::get('/expedientes/index/', [ExpedientesController::class,'index'])->middleware(['auth'])->name('index.expedientes');
Route::get('/expedientes/create/', [ExpedientesController::class,'create'])->middleware(['auth'])->name('create.expediente');
Route::get('/expedientes/edit/{id}', [ExpedientesController::class,'edit'])->middleware(['auth'])->name('edit.expediente');
Route::post('/expedientes/store/', [ExpedientesController::class,'store'])->middleware(['auth'])->name('store.expediente');
Route::get('/expedientes/buscar/{numero}', [ExpedientesController::class,'show'])->middleware(['auth'])->name('buscar.expediente');;
Route::post('/expedientes/update', [ExpedientesController::class,'update'])->middleware(['auth'])->name('update.expediente');;
Route::get('/expedientes/buscar/doc/{dniruc}', [ExpedientesController::class,'buscar_doc'])->middleware(['auth'])->name('buscar.expediente.dniruc');;
//Cronogramas
Route::get('/cronogramas/index/{expediente_id}', [CronogramasController::class,'index'])->middleware(['auth'])->name('index.cronograma');
Route::post('/cronogramas/store/', [CronogramasController::class,'store'])->name('store.cronograma');
Route::put('/cronogramas/update/{cronograma_id}', [CronogramasController::class,'update'])->middleware(['auth'])->name('update.cronograma');
Route::get('/cronogramas/show/{expediente_id}', [CronogramasController::class,'show'])->middleware(['auth'])->name('show.cronograma');

//Pagos
Route::post('/pagos/store/', [PagosController::class,'store'])->middleware(['auth'])->name('store.pagos');
Route::post('/pagos/update/{id}', [PagosController::class,'update'])->middleware(['auth'])->name('update.pagos');
Route::get('/pagos/index/{cronograma_id}', [PagosController::class,'index'])->middleware(['auth'])->name('index.pagos');

//contancias
Route::get('/constancias/index', [ConstanciasemitidosController::class,'index'])->middleware(['auth'])->name('index.constancias');
Route::post('/constancias/store', [ConstanciasemitidosController::class,'store'])->middleware(['auth'])->name('store.constancias');
Route::get('/constancias/imprimir/{id_constancia}', [ConstanciasemitidosController::class,'imprimir'])->middleware(['auth'])->name('imprimir.constancias');

//constancias datos
Route::get('/datos/constancias/index', [ConstanciasdatosController::class,'datos_index'])->middleware(['auth'])->name('datos.constancias.index');
Route::post('/datos/constancias/store', [ConstanciasdatosController::class,'datos_store'])->middleware(['auth'])->name('datos.constancias.store');
Route::get('/datos/constancias/edit/{id}', [ConstanciasdatosController::class,'datos_edit'])->middleware(['auth'])->name('datos.constancias.edit');
Route::post('/datos/constancias/update', [ConstanciasdatosController::class,'datos_update'])->middleware(['auth'])->name('datos.constancias.update');

//CorrelativoCartas de No Adeudo
Route::post('/numero/correlativo/update', [ConstanciasdatosController::class,'correlativo_update'])->middleware(['auth'])->name('correlativo.update');

//Provincia,Distritos, Regiones
Route::get('/distritos', [RegionesController::class,'index_distritos']);
Route::get('/provincias', [RegionesController::class,'index_provincias']);
Route::get('/regiones', [RegionesController::class,'index_regiones']);
