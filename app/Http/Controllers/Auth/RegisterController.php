<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\OtpCode;
use App\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users,email|email',
        ]);

        $data_request = $request->all();
        $user = User::create($data_request);
        
        $data['user'] = $user;

        return response()->json([
            'response_code' => "01",
            'response_message' => "user berhasil ditambahkan, silakan ceck email anda",
            'data' => $data
        ]);

    }
}
