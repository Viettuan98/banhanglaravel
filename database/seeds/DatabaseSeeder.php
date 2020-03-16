<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(category::class);
        $this->call(product::class);
        $this->call(users::class);
        $this->call(attribute::class);
        $this->call(values::class);
        $this->call(values_product::class);
        $this->call(variant::class);
        $this->call(variant_values::class);
    }
}
