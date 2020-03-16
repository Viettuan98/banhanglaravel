<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:5',
            'full' => 'required',
            'phone' => 'required|unique:users,phone',
        ];
    }
    public function messages()
    {
        return [
            'email.required' => 'email không được để trống!',
            'email.email' => 'email không đúng định dạng!',
            'email.unique' => 'email đã tồn tại!',

            'password.required' => 'Mật khẩu không được để trống!',
            'password.min' => 'Mật khẩu không được nhỏ hơn 5 ký tự',

            'full.required' => 'Full name không được để trống!',
            'phone.required' => 'Số điện thoại không được để trống!',
            'phone.unique' => 'Số điện thoại đã tồn tại!',
        ];
    }
}
