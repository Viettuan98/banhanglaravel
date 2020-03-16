<?php

use Illuminate\Database\Seeder;

class values_product extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('values_product')->delete();
        DB::table('values_product')->insert([
            ['product_id' => 1, 'values_id' => 1],
            ['product_id' => 1, 'values_id' => 2],
            ['product_id' => 1, 'values_id' => 4],

            ['product_id' => 2, 'values_id' => 2],
            ['product_id' => 2, 'values_id' => 3],
            ['product_id' => 2, 'values_id' => 5],

            ['product_id' => 3, 'values_id' => 3],
            ['product_id' => 3, 'values_id' => 5],
            ['product_id' => 3, 'values_id' => 6],

            ['product_id' => 4, 'values_id' => 2],
            ['product_id' => 4, 'values_id' => 4],
            ['product_id' => 4, 'values_id' => 6],

            ['product_id' => 5, 'values_id' => 2],
            ['product_id' => 5, 'values_id' => 4],
            ['product_id' => 5, 'values_id' => 5],

        ]);
    }
}
