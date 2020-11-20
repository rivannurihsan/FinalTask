<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ProfileController extends Controller
{
    public function show()
    {
        $data['user'] = auth()->user();

        return response()->json([
            'response_code' => '00',
            'response_message' => 'profile berhasil ditampilkan',
            'data' => $data
        ]);
    }

    public function update(Request $request)
    {
        $user = auth()->user();

        if($request->hasFile('photo')){
            $photo = $request->file('photo');
            $photo_extension = $photo->getClientOriginalExtension();
            $photo_name = Str::slug($user->name, '_').'_'.$user->id . ".".$photo_extension;
            $photo_folder = '/photos/user/photo-profile/';
            $photo_location = $photo_folder . $photo_name;
            
            try{
                $photo->move(public_path($photo_folder), $photo_name);
                
                $user->update([
                    'photo' => $photo_location,
                ]);

            }catch (\Exception $e){

                return response()->json([
                    'response_code' => '01',
                    'response_message' => 'photo profile gagal upload',
                    // 'data' => $data
                ], 200);

            }


        }

        $user->update([
            'name' => $request->name,
        ]);

        $data['user'] = $user;

        return response()->json([
            'response_code' => '00',
            'response_message' => 'profile berhasil diupdate',
            'data' => $data
        ], 200);
    }
}
