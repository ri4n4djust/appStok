<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NoselDetail extends Model
{
    use HasFactory;
    protected $table = 'tblnosel_detail';
    protected $fillable = [
        'r_bbm', 'nama_nosel', 'meter_awal', 'meter_akhir', 'harga'
    ];
}
