<?php

namespace App\Livewire;

use App\Models\Pelanggan;
use App\Models\Transaksi;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Penjualan extends Component
{
    public $id_pelanggan;
    public function render()
    {
        return view('livewire.penjualan',[
            'data'=>Pelanggan::orderBy('id','desc')->get()
        ]);
    }

    public function store()
    {
        $this->validate([
            'id_pelanggan'=>'required'
        ]);

        Transaksi::create([
            'invoice'=>$this->invoice(),
            'id_pelanggan'=>$this->id_pelanggan,
            'id_user'=>Auth::user()->id,
            'total'=>'0'
        ]);
        $this->id_pelanggan=NULL;
        return redirect()->to('transaksi');
    }

    public function invoice()
    {
        $transaksi=Transaksi::orderBy('created_at','DESC');
        if($transaksi->count()>0){
            $transaksi=$transaksi->first();
            $explode=explode('-',$transaksi->invoice);
            return 'INV-'.$explode[1]+1;
        }
        return 'INV-1';
    }
}
