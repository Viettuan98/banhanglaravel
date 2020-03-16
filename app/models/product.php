<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    protected $table = 'product';
    public function category()
    {
        return $this->belongsTo('App\models\category', 'category_id', 'id');
    }
    public function values()
    {
        return $this->belongsToMany('App\models\values', 'values_product', 'product_id', 'values_id');
    }
    public function variant()
    {
        return $this->hasMany('App\models\variant', 'product_id', 'id');
    }
}
