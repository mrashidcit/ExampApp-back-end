<?php

use Illuminate\Database\Seeder;

class ClassesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        /*
         *  Truncate will be call on Following tables
         *    (Classes, Subjects, Questions)
         */
        DB::table('classes')->truncate();
        DB::table('subjects')->truncate();
        DB::table('questions')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1');

        \App\Classes::create([
            'name' => '9th'
        ]);

        \App\Classes::create([
            'name' => '10th'
        ]);





    }
}
