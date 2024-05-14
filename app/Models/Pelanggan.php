<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Hasmany;

class Pelanggan extends Model
{
    use HasFactory;
    protected $fillable=['nama', 'telepon','alamat'];

    public function transaksi():HasMany
    {
        return $this->hasMany(Transaksi::class);
    }
}
