<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditValueRequest extends FormRequest
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
            'value_name' => 'required|unique:values,value,' . $this->id,
        ];
    }
    public function messages()
    {
        return [
            'value_name.required' => 'Giá trị của thuộc tính không được để trống!',
            'value_name.unique' => 'Giá trị của thuộc tính Đã Tồn tại!',
        ];
    }
}
