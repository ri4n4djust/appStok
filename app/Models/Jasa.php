<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jasa extends Model
{
    use HasFactory;
    protected $table = 'tbljasa';

    protected $fillable = [
        'nmJasa', 'biayaJasa', 'kdJasa', 'accid', 'accid_biaya'
    ];
}
