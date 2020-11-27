<?php
use App\Blog;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 20; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('blogs')->insert([
    			'id'            => $faker->uuid,
    			'title'         => $faker->sentence,
    			'description'   => $faker->paragraph,
                'image'         => $faker->image(public_path('/photos/blog/'),400,300, null, false),
                'created_at'    => now(),
    		]);
 
    	}
    }
}
