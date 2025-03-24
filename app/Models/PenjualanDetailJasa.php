<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenjualanDetailJasa extends Model
{
    use HasFactory;
    protected $table = 'tblpenjualan_detail_jasa';
    protected $fillable = [
        'r_noPenjualan', 'r_kdJasa', 'r_nmJasa', 'biayaJasa', 'qtyJasa','totalJual'
    ];
}
