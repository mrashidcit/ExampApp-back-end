<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    protected $table = 'classes';
    protected $fillable = ['name'];

    public $timestamps = false;

    public function Subjects(){
        return $this->hasMany('App\Subject', 'class_id');
    }


}
