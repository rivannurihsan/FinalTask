<?php
use App\Campaign;
use Illuminate\Database\Seeder;

class CampaignSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Campaign::insert([
            [
                'id'=>Str::uuid(),
                'title'=> 'SpinnerCMS',
                'description'=> 'Mengolah SEO artikel anda menjadi lebih baik tanpa plagiarsm',
                'image'=> null,
            ],
            [
                'id'=>Str::uuid(),
                'title'=> 'MySirkah',
                'description'=> 'Market Idea yang dapat daling membantu para inventor dan investor',
                'image'=> null,
            ],
        ]);
    }
}
