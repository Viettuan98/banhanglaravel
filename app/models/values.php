<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class values extends Model
{
    protected $table = 'values';
    public $timestamps = false;
    public function attribute()
    {
        return $this->belongsTo('App\models\attribute', 'attr_id', 'id');
    }
    public function product()
    {
        return $this->belongsToMany('App\models\product', 'values_product', 'values_id', 'product_id');
    }
}
