<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests\AddCategoryRequest;
use App\Http\Requests\EditCategoryRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\category;

class CategoryController extends Controller
{
    public function GetCategory()
    {
        $data['category'] = category::all();
        return view('backend.category.category', $data);
    }

    public function PostCategory(AddCategoryRequest $request)
    {
        $cate = new category;
        $cate->name = $request->name;
        $cate->parent = $request->parent;
        $cate->save();
        return redirect()->back()->with('thongbao', 'Đã thêm thành công!');
    }

    public function EditCategory($id)
    {
        $data['cate'] = category::find($id);
        $data['category'] = category::all();
        return view('backend.category.editcategory', $data);
    }

    public function PostEditCategory(EditCategoryRequest $request, $id)
    {
        $cate = category::find($id);
        $cate->name = $request->name;
        $cate->parent = $request->parent;
        $cate->save();
        return redirect()->back()->with('thongbao', 'Đã sửa thành công');
    }
    public function DelCategory($id)
    {
        category::destroy($id);
        return redirect('admin/category')->with('thongbao', 'Đã xoá thành công!');
    }
}
