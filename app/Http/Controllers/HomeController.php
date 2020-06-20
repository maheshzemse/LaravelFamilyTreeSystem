<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;
use App\Family;
use Session;
use Crypt;


class HomeController extends Controller

{

	function register(Request $req)
	{
		$user = new Client;
    	$user ->name=$req->input('name');
    	$user ->password=Crypt::encrypt($req->input('password'));
    	$user ->email=$req->input('email');
    	$user ->age=$req->input('age');

    
    	$user->save();

    	$req->Session()->put('client',$req->input('email'));
    	return redirect('login');
	}


		function login(Request $req)

		{
			$client= Client::where("email",$req->input('email'))->get();
    	
	    	//return $client[0]->password;
	    	//return Crypt::decrypt($client[0]->password)==$req->input('password');
	    	if(Crypt::decrypt($client[0]->password)==$req->input('password')) 
	    	{
	    		$req->Session()->put('client',$client[0]->email);
	    		return redirect('list');
	        }
	        else
	        {
	            $req->Session()->flash('status','Enter the valid Credentials!!! ');
	        return redirect('login');
	        }

   		 }



   		 function familyform(Request $req)
   		 {
   		 	$family=new Family;
   		 	$family->uemail=Session::get('client');
   		 	$family->relation=$req->input('relation');
   		 	$family->name=$req->input('name');
   		 	$family->email=$req->input('email');
   		 	$family->age=$req->input('age');
   		 	$family->save();

   		 	$req->Session()->flash('status','Relation entry added successfully');

    		return redirect('list');

		}

		function logout()
   			{

   			auth()->logout();
   			return redirect('login');
   	
   			}

   		function list()
   		{

   			$email=Session::get('client');
        	$data=family::where("uemail","$email")->get();
        	return view('list',["data"=>$data]);

   		}


























		




































    
}
	