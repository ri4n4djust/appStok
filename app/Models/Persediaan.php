<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Persediaan extends Model
{
    use HasFactory;
    protected $table = 'tblpersediaan';
    protected $fillable = [
        'kdPersediaan', 'nmPersediaan', 'stokPerseiaan', 'satuanPersediaan', 'ktgPersediaan', 'lastPrice', 'salePrice', 'note'
    ];
}
