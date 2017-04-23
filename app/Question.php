<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = [
       'subject_id',
        'question',
        'a', 'b','c','d',
        'correct_option'
    ];

    public $timestamps = false;

    // On Question Belong on One Subject At a time
    public function Subject(){
        return $this->belongsTo('App\Subject', 'subject_id');
    }
}
