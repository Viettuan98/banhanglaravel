<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Requests\{UserRequest, EditUserRequest};
use App\Http\Controllers\Controller;
use App\models\users;

class UserController extends Controller
{
    public function ListUser()
    {
        $data['users'] = users::paginate(3);
        return view('backend.user.listuser', $data);
    }
    public function AddUser()
    {
        return view('backend.user.adduser');
    }
    public function PostAddUser(UserRequest $request)
    {
        //dd($request->all());
        $user = new users;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->full = $request->full;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->level = $request->level;
        $user->save();

        return redirect('admin/user')->with('thongbao', 'Đã thêm thành công');
    }
    public function EditUser($id)
    {
        $data['user'] = users::find($id);
        return view('backend.user.edituser', $data);
    }
    public function PostEditUser(EditUserRequest $request, $id)
    {
        $user = users::find($id);
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->full = $request->full;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->level = $request->level;
        $user->save();

        return redirect('admin/user')->with('thongbao', 'Đã thêm thành công');
    }
    public function DelUser($id)
    {
        users::destroy($id);
        return redirect('admin/user')->with('thongbao', 'Đã xoá thành công!');
    }
}
