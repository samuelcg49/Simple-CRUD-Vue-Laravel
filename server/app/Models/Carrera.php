<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carrera extends Model
{
    use HasFactory;

    protected $table = "carreras";

    protected $fillable = [
        'fecha',
        'tipo',
        'categoria',
        'entradas',
        'circuito',
        'ciudad'
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
