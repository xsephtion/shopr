<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function username()
    {
        return 'username'; 
    }
    public function logout(Request $request){
        Auth::logout();
        return redirect()->route('/');
    }
    

    // public function login(Request $request)
    // {   
    //     // $user_login = User::where([
    //     //    'username' => $request->username
    //     // ])->first();
    //     // if(Hash::check($request->get('password') ,$user_login->password)){
    //     //     if (Auth::loginUsingId($user_login->id)) {
    //     //         return redirect()->intended('/');
    //     //     }
    //     // }
    //     // else{
    //     //     //PASSWORD FAILS
    //     //     dd($request->password);
    //     //     dd("HASH FAILS");
    //     // }

    //     // $this->validate($request, [
    //     //     'email' => 'required',
    //     //     'password' => 'required|min:6'
    //     // ]);

        
    //     $credentials = $request->only('username', 'password');
    //     if (Auth::attempt($credentials)) {
    //         return redirect()->intended('home');
    //     }
    //     else{
    //         dd("PUTANGINA");
    //     }

    //     // return redirect()->back()
    //     //     ->withInput()
    //     //     ->withErrors([
    //     //         'login_error' => 'These credentials do not match our records.',
    //     //     ]);
    // }
}
