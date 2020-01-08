<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Eloquent\Model;

class AboutContent extends Model
{
    protected $fillable = ['title', 'description', 'image'];
}
