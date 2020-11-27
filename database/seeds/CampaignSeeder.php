<?php
use App\Campaign;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class CampaignSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Campaign::insert([
        //     [
        //         'id'=>Str::uuid(),
        //         'title'=> 'SpinnerCMS',
        //         'description'=> 'Mengolah SEO artikel anda menjadi lebih baik tanpa plagiarsm',
        //         'image'=> null,
        //     ],
        //     [
        //         'id'=>Str::uuid(),
        //         'title'=> 'MySirkah',
        //         'description'=> 'Market Idea yang dapat daling membantu para inventor dan investor',
        //         'image'=> null,
        //     ],
        // ]);

        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 20; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('campaigns')->insert([
    			'id'            => $faker->uuid,
    			'title'         => $faker->title,
    			'description'   => $faker->paragraph,
                'image'         => $faker->image(public_path('/photos/campaign'),400,300, null, false),
                'address'       => $faker->address,
                'created_at'    => now(),
                'required'      => $faker->numberBetween(1000000,4000000),
                'collected'     => $faker->numberBetween(1000000,3000000),

    		]);
 
    	}
    }
}
