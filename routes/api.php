<?php

use Illuminate\Http\Request;
// use Illuminate\Routing\Route;~

Route::group([
  'middleware'  => 'api', 
  'prefix'      => 'auth',
  'namespace'   => 'Auth',
], function() {
  Route::post('register', 'RegisterController');  
  Route::post('regenerate-otp', 'RegenarateOtpCodeController');  
  Route::post('verification', 'VerificationController');  
  Route::post('update-password', 'UpdatePasswordController');  
  Route::post('login', 'LoginController');  
});

Route::group([
  'middleware' => ['api', 'email_verified', 'auth:api'],
], function() {

  Route::get('profile/show', 'ProfileController@show');
  Route::post('profile/update', 'ProfileController@update');
  
});

?>