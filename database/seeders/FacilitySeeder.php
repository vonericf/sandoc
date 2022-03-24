<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FacilitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Seed data table
        $data = base_path('sql_dumps/facilities_hospital.sql');
        DB::unprepared(file_get_contents($data));

        // Seed data table
        $data2 = base_path('sql_dumps/facilities_clinic.sql');
        DB::unprepared(file_get_contents($data2));
    }
}
