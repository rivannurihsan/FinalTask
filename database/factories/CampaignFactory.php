<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Model::class, function (Faker $faker) {
    return [
        'id'            => $faker->Str::uuid(),
    	'title'         => $faker->title,
    	'description'   => $faker->paragraph,
        'image'         => $faker->image,
        'address'       => $faker->address,
        'create_at'      => $faker->address,
        'required'      => $faker->numberBetween(25,40),
        'collected'     => $faker->numberBetween(25,40),
    ];
});
