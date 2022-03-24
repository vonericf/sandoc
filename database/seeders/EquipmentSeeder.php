<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EquipmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Seed data table
        $data = base_path('sql_dumps/equipment.sql');
        DB::unprepared(file_get_contents($data));
    }
}
