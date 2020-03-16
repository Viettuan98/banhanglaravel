<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\{attribute, product, category, values, customer, order, attr};
use Cart;
use Illuminate\Support\Facades\Redirect;

class ProductController extends Controller
{
    public function ListProduct(request $request)
    {

        if ($request->category) {
            $data['products'] = category::find($request->category)->product()->where('img', '<>', 'no-img.jpg')->paginate(9);
        } else if ($request->start) {
            $data['products'] = product::whereBetween('price', [$request->start, $request->end])->where('img', '<>', 'no-img.jpg')->paginate(9);
        } else if ($request->value) {
            $data['products'] = values::find($request->value)->product()->where('img', '<>', 'no-img.jpg')->paginate(9);
        } else {
            $data['products'] = product::where('img', '<>', 'no-img.jpg')->paginate(9);
        }
        $data['category'] = category::all();
        $data['attrs'] = attribute::all();
        return view('frontend.product.shop', $data);
    }
    public function DetailProduct($id)
    {
        $data['product'] = product::find($id);
        $data['product_new'] = product::where('id', '<>', $id)->where('img', '<>', 'no-img.jpg')->orderby('created_at', 'desc')->take(4)->get();
        return view('frontend.product.detail', $data);
    }
    public function AddCart(request $request)
    {
        $product = product::find($request->id_product);
        Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->quantity,
            'price' => getprice($product, $request->attr),
            'options' => ['img' => $product->img, 'attr' => $request->attr]
        ]);
        return redirect('product/cart');
    }
    public function GetCart()
    {
        //dd(Cart::Content());
        $data['cart'] = Cart::Content();
        $data['total'] = Cart::total(0, '', '.');
        return view('frontend.product.cart', $data);
    }
    public function RemoveCart($id)
    {
        Cart::remove($id);
        return redirect('product/cart');
    }
    public function UpdateCart($rowId, $qty)
    {
        Cart::update($rowId, $qty);
    }
    public function Checkout()
    {
        $data['cart'] = Cart::content();
        $data['total'] = Cart::total(0, '', '.');
        return view('frontend.product.checkout', $data);
    }
    public function PostCheckout(request $request)
    {

        $customer = new customer;
        $customer->full_name = $request->name;
        $customer->address = $request->address;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->total = Cart::total(0, '', '');
        $customer->state = 0;
        $customer->save();

        foreach (Cart::content() as $product) {
            $order = new order;
            $order->name = $product->name;
            $order->price = $product->price;
            $order->quantity = $product->qty;
            $order->img = $product->options->img;
            $order->customer_id = $customer->id;
            $order->save();
            foreach ($product->options->attr as $key => $value) {
                $attr = new attr;
                $attr->name = $key;
                $attr->value = $value;
                $attr->order_id = $order->id;
                $attr->save();
            }
        }
        Cart::destroy();
        // return redirect('product/complete/' . $customer->id);
        $data['customer'] = customer::find($customer->id);
        return view('frontend.product.complete', $data);
    }
    // public function complate($id_customer)
    // {
    //     $data['customer'] = customer::find($id_customer);
    //     return view('frontend.product.complete', $data);
    // }
}
