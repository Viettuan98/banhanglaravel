<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\customer;

class OrderController extends Controller
{
    public function ListOrder()
    {
        $data['customers'] = customer::where('state', 0)->orderby('created_at', 'DESC')->paginate(10);
        return view('backend.order.order', $data);
    }
    public function DetailOrder($customer_id)
    {
        $data['customer'] = customer::find($customer_id);
        return view('backend.order.detailorder', $data);
    }

    public function ActiveOrcer($customer_id)
    {
        $customer = customer::find($customer_id);
        $customer->state = 1;
        $customer->save();
        return redirect('admin/order')->with('thongbao', 'Đã chốt đơn hàng thành công!');
    }
    public function Processed()
    {
        $data['customers'] = customer::where('state', 1)->orderby('updated_at', 'DESC')->paginate(10);
        return view('backend.order.orderprocessed', $data);
    }
}
