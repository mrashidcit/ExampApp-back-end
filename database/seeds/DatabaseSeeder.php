<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $this->call(ClassesTableSeeder::class);

        // Subjects seeder must be called after Classes-Seeder
        $this->call(SubjectsTableSeeder::class);

        // Questions seeder must be called After Above Two TableSeeders
        $this->call(QuestionsTableSeeder::class);

    }
}
