<?php

use Illuminate\Database\Seeder;

class BoardsTableSeeder extends Seeder
{
    
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');

        DB::table('
        boards')->truncate();

        \App\Board::create([
            'name' => 'Lahore'
        ]);

        \App\Board::create([
            'name' => 'Faisalabad'
        ]);

        \App\Board::create([
            'name' => 'Gujrawala'
        ]);


    }
}
