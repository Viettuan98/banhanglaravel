<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\product;


class HomeController extends Controller
{
    public function GetHome()
    {
        $data['product_fe'] = product::where('featured', 1)->where('img', '<>', 'no-img.jpg')->take(4)->get();
        $data['product_new'] = product::orderby('created_at', 'desc')->where('img', '<>', 'no-img.jpg')->take(8)->get();
        return view('frontend.index', $data);
    }
    public function GetContact()
    {
        return view('frontend.contact');
    }
    public function GetAbout()
    {
        return view('frontend.about');
    }
}
