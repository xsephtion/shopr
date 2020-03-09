<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $request->validate([
            'username'=>'required',
            'password'=>'required'
        ]);

        $products = DB::table('products')->get();
        $products = json_encode($products);
        $products = json_decode($products);

        $query = DB::table('customer')->where('username', $request->input('username'))->get('username');
        //dd($query->isEmpty());
        $query_password = DB::table('customer')->where('username', $request->input('username'))->first();
        if($query->isEmpty()){
            echo '<script language="javascript">';
            echo 'alert("Credentials doesn\'t exists")';
            echo '</script>';
            return view('index', ['products'=>$products]);

        }else if (strcmp($query_password->password, $request->input('password')) != 0 ){
            echo '<script language="javascript">';
            echo 'alert("Wrong Password")';
            echo '</script>';
            return view('index', ['products'=>$products]);
            
        }else{
            $query_details = DB::table('customer') -> where('username', $request->input('username'))->first();
            echo '<script language="javascript">';
            echo 'alert("Login Successful")';
            echo '</script>';
            Session::push('User', $query_details);
            return view('index', ['products'=>$products]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
