<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OldExam extends Model
{
    protected $table = "old_exams";

    protected $fillable = [
        'board_id', 'year_id', 'class_id',
        'subject_id', 'file_name'
    ];

    public $timestamps = false;
}
