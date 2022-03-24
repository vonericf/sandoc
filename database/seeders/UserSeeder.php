<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Create Roles
        Role::create(['name' => 'super admin']);
        Role::create(['name' => 'doctor']); // Doctor
        Role::create(['name' => 'patient']); // Patient
        Role::create(['name' => 'staff']); // Staff

        // Create user using the UserFactory class
        $user = User::factory()->create([
            'name' => 'Doctor',
            'username' => 'doctor',
            'email' => 'doctor@sandoc.loc',
            'password' => Hash::make('password'),
        ]);
        // Assign user role
        $user->assignRole('doctor');
    }
}
