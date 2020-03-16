<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    protected $table = "order";
    public $timestamps = false;
    public function attr()
    {
        return $this->hasMany('App\models\attr', 'order_id', 'id');
    }
}
