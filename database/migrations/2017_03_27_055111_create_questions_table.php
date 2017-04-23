<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->increments('id');
            //$table->integer('class_id')->unsinged();
            $table->integer('subject_id')->unsinged();
            $table->string('question');
            $table->string('a')->default('None');
            $table->string('b')->default('None');
            $table->string('c')->default('None');
            $table->string('d')->default('None');
            $table->string('correct_option');

            //$table->foreign('subject_id')->references('id')->on('subjects');

            //$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('questions');
    }
}
