<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $table = 'category';
    public $timestamps = false;
    public function product()
    {
        return $this->hasMany('App\models\product', 'category_id', 'id');
    }
}
