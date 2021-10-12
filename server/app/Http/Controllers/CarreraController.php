<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Carrera;
use App\Http\Requests\CreateCarreraRequest;
use App\Http\Requests\UpdateCarreraRequest;
use Illuminate\Support\Carbon;

class CarreraController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Carrera::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateCarreraRequest $request)
    {
        $input = $request->all();

        Carrera::create($input);

        return response([
            "res" => true,
            "message" => "Carrera agregada con éxito"
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($id) //Este parámetro viene por la URL.
    {       //$id se podría sustituir por Carrera $carrera y así no haría falta ejecutar el "find($id)".
        return Carrera::find($id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCarreraRequest $request, Carrera $carrera)
    {
        $input = $request->all();
        $carrera->update($input);

        return response()->json([
            "res" => true,
            "carrera" => $carrera, //$directorio devuelve el objeto completo, $input solo los valores enviados.
            "message" => "Registro actualizado correctamente"
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Carrera::destroy($id);

        return response()->json([
            "res" => true, //$directorio devuelve el objeto completo, $input solo los valores enviados.
            "message" => "Carrera borrada correctamente"
        ], 200);
    }
}
