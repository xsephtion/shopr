<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Session;
class SessionController extends Controller {

   public function accessSessionData(Request $request) {
      if($request->session()->has('User'))
         echo $request->session()->get('User');
   }

   public function storeSessionData(Request $request) {
      dd($request);
      //$request->session()->put('User',$request);
   }
   
   public function deleteSessionData(Request $request) {
      $request->session()->forget('User');
   }
}