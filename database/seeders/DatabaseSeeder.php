<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Seed data table
        $data = base_path('sql_dumps/facility_hmos.sql');
        DB::unprepared(file_get_contents($data));

        // Seed data table
        $data2 = base_path('sql_dumps/facility_service.sql');
        DB::unprepared(file_get_contents($data2));

        // Seed data table
        $data3 = base_path('sql_dumps/facility_equipment.sql');
        DB::unprepared(file_get_contents($data3));
    }
}
