<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Ville;

class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nom' => $this->faker->firstName($gender = null|'male'|'female') . " " . $this->faker->lastName(),
            'adresse' => $this->faker->address,
            'telephone' => $this->faker->phoneNumber,
            'email' => $this->faker->email,
            'date_naissance' => $this->faker->date($format = 'Y-m-d', $max = 'now'),
            'ville_id' => $this->faker->randomElement(Ville::pluck('id'))
        ];
    }
}
