<?php

use Illuminate\Database\Seeder;

class variant_values extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('variant_values')->delete();
        DB::table('variant_values')->insert([
            ['variant_id' => 1, 'values_id' => 1],
            ['variant_id' => 1, 'values_id' => 4],
            ['variant_id' => 2, 'values_id' => 2],
            ['variant_id' => 2, 'values_id' => 4],

            ['variant_id' => 3, 'values_id' => 2],
            ['variant_id' => 3, 'values_id' => 5],
            ['variant_id' => 4, 'values_id' => 3],
            ['variant_id' => 4, 'values_id' => 5],

            ['variant_id' => 5, 'values_id' => 3],
            ['variant_id' => 5, 'values_id' => 5],
            ['variant_id' => 6, 'values_id' => 3],
            ['variant_id' => 6, 'values_id' => 6],

            ['variant_id' => 7, 'values_id' => 2],
            ['variant_id' => 7, 'values_id' => 4],
            ['variant_id' => 8, 'values_id' => 2],
            ['variant_id' => 8, 'values_id' => 6],

            ['variant_id' => 9, 'values_id' => 2],
            ['variant_id' => 9, 'values_id' => 4],
            ['variant_id' => 10, 'values_id' => 2],
            ['variant_id' => 10, 'values_id' => 5],

        ]);
    }
}
