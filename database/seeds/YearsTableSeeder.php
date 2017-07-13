<?php

use Illuminate\Database\Seeder;

class YearsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');

        DB::table('years')->truncate();

        $year = 2012;

        for($year; $year <= 2016; $year++){
            
            \App\Year::create([
            'year' => $year
            ]);

        }


        

    }
}
