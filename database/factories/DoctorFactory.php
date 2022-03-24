<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class DoctorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'last_name' => $this->faker->name(),
            'first_name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'landline_no' => null,
        ];
    }
}
