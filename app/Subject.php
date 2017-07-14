<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{

    protected $table = 'subjects';
    protected $fillable = ['class_id', 'name'];

    public $timestamps = false;


    // Have many Questions
    public function Questions(){
        return $this->hasMany('App\Question', 'subject_id');
    }
    


    // Belongs to One Class
    public function Classes(){
        return $this->belongsTo('App\Classes', 'class_id');
    }
}
