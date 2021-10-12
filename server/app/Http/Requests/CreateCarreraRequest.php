<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateCarreraRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "fecha" => "required",
            "tipo" => "required|min:3|max:100",
            "categoria" => "required|max:100",
            "circuito" => "required|max:255",
            "ciudad" => "required|max:255"
        ];
    }
}
