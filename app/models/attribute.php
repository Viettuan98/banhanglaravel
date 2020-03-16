<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class attribute extends Model
{
    protected $table = 'attribute';
    public $timestamps = false;
    public function values()
    {
        return $this->hasMany('App\models\values', 'attr_id', 'id');
    }
}
