<?php

namespace App\Listener;

use App\Events\UserRegistered;
use App\Mail\SendOtpCodeMail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendEmailOtpCode implements ShouldQueue
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  UserRegistered  $event
     * @return void
     */
    public function handle(UserRegistered $event)
    {
        if($event->condition == 'register') {
            $pesan ="We're excited to have you get started. First, you need to confrim your account.
            Thid is your OTP code : ";
        }
        elseif($event->condition == "reegenerate"){
            $pesan ="Regenerate OTP successfull. This is your OTP code :";
        }


        Mail::to($event->user)->send(new SendOtpCodeMail($event->user, $pesan));
    }
}
