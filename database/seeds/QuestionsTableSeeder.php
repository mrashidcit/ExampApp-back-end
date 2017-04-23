<?php

use App\Subject;
use Illuminate\Database\Seeder;

class QuestionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $subject = Subject::find(1);


        $subject->Questions()->create([
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);


    }
}
