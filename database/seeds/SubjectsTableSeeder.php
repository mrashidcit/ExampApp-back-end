<?php

use Illuminate\Database\Seeder;
use App\Classes;

class SubjectsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        $class = Classes::find(2);

        $class->Subjects()->create([
            'name' => 'Computer',

        ]);
        $class->Subjects()->create([
            'name' => 'Math',

        ]);
        $class->Subjects()->create([
            'name' => 'English',

        ]);
        $class->Subjects()->create([
            'name' => 'Bio',

        ]);
        $class->Subjects()->create([
            'name' => 'Physics',

        ]);
        $class->Subjects()->create([
            'name' => 'Chemistery',

        ]);
        $class->Subjects()->create([
            'name' => 'Islamiat',

        ]);

        // 10th Class
        $class = Classes::find(1);

        $class->Subjects()->create([
            'name' => 'Computer',

        ]);
        $class->Subjects()->create([
            'name' => 'Math',

        ]);
        $class->Subjects()->create([
            'name' => 'English',

        ]);
        $class->Subjects()->create([
            'name' => 'Bio',

        ]);
        $class->Subjects()->create([
            'name' => 'Physics',

        ]);
        $class->Subjects()->create([
            'name' => 'Chemistery',

        ]);
        $class->Subjects()->create([
            'name' => 'Islamiat',

        ]);
    }
}
