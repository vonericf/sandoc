<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SpecializationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Seed data table
        $data = base_path('sql_dumps/specialization.sql');
        DB::unprepared(file_get_contents($data));
    }
}
