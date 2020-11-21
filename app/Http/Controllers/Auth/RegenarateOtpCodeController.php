<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use App\Events\UserRegistered;
use Illuminate\Http\Request;

class RegenarateOtpCodeController extends Controller
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
            'email' => 'required ',
        ]);

        $user =User::where('email', $request->email)->first();

        $user->generate_otp_code();

        event(new UserRegistered($user, 'register'));

        $data['user'] = $user;

        return response()->json([
            'response_code' => '00',
            'response_message' => 'otp berhasil digenerate, silakan cek emai untuk melihat kode otp',
            'data' => $data
        ]);
    }
}
