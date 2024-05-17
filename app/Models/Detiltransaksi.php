<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Detiltransaksi extends Model
{
    protected $fillable=['id_transaksi','id_produk','qty','harga'];
    use HasFactory;

    public function transaksi():BelongsTo
    {
        return $this->belongsTo(Transaksi::class);
    }

    public function produk():BelongsTo
    {
        return $this->belongsTo(produk::class);
    }
}