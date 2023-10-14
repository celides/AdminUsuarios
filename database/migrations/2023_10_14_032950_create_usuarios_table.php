<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuariosTable extends Migration
{
    public function up()
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->id(); // Autoincremental y clave primaria.
            $table->string('nombre');
            $table->string('apellido');
            $table->string('correo_electronico')->unique(); // Campo único para el correo electrónico.
            $table->timestamp('fecha_de_registro')->useCurrent();
            $table->timestamps(); // Campos de timestamp: created_at y updated_at.
        });
    }

    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
}
