<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BrandsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('brands')->insert([
            ['brand_name' => 'Toyota'],
            ['brand_name' => 'Yamaha'],
            ['brand_name' => 'Honda'],
            ['brand_name' => 'BMW'],
        ]);
    }
}
