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

        
        
        // Board: Lahore, Year: 2012 , Class: 9th, Subject: Computer
        $board_id = 1; $year_id = 1; $class_id = 1; $subject_id=8;

        $subject = Subject::find($subject_id);

        $subject->Questions()->create([
            'board_id' => $board_id,
            'year_id' => $year_id,
            'class_id' => $class_id,
            
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'board_id' => $board_id,
            'year_id' => $year_id,
            'class_id' => $class_id,
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'board_id' => $board_id,
            'year_id' => $year_id,
            'class_id' => $class_id,
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);
        $subject->Questions()->create([
            'board_id' => $board_id,
            'year_id' => $year_id,
            'class_id' => $class_id,
            'question' => 'Each ______ can be subdivided into sub tasks',
            'a' => 'None of given',
            'b' => 'Program',
            'c' => 'Task',
            'd' => 'Project',
            'correct_option' => 'c',

        ]);


    }
}
