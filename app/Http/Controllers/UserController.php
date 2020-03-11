<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User; 
use DB;
use Session;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('register');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $request->validate([
            'fname'=>'required',
            'email'=>'required',
            'pnum'=>'required',
            'username'=>'required',
            'password'=>'required'
        ]);

        $contact = new User([
            'ffname' => $request->get('fname'),
            'email' => $request->get('email'),
            'pnum' => $request->get('pnum'),
            'username' => $request->get('username'),
            'password' => $request->get('password')
        ]);
        
        User::create($request->all());
        echo '<script language="javascript">';
        echo 'alert("Registered Successfuly")';
        echo '</script>';
        $query = DB::table('customer')->where('username', $request->input('username'))->first();
        Session::put('User', $query);
        return redirect('/');
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
