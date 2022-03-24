<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DoctorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Seed data table
        $data = base_path('sql_dumps/doctor.sql');
        //DB::unprepared(file_get_contents($data));

        // Seed data table
        $data2 = base_path('sql_dumps/doctors.sql');
       // DB::unprepared(file_get_contents($data2));

        // Seed data table
        $data3 = base_path('sql_dumps/doctor_facilities.sql');
        DB::unprepared(file_get_contents($data3));

    }
}
