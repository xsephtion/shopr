<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Session;

use DB;
class CartController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function store()
    {
        $items = Session::get('Cart');
        //dd($items);
        if($items['quantity'] == ''){
            $items['quantity'] = 1;
        }
        $query = DB::table('customer_cart')->insert(
            ['productid' => $items['productid'], 'customername' => $items['customername'], 'product_name' => $items['product_name'], 'price' => $items['price'], 'quantity' => $items['quantity']]
        );
        $query = DB::table('customer_cart')->get();
        $query = json_encode($query);
        $query = json_decode($query);
        return view('cart', ['items' => $query]);
    }

    public function index()
    {
        $query = DB::table('customer_cart')->get();
        $query = json_encode($query);
        $query = json_decode($query);
        if(empty($query)){
            return view('cartnull');
        }
        
        return view('cart', ['items' => $query]);
    }
    public function checkout(){

    }

}
