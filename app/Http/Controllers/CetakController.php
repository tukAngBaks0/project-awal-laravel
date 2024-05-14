<?php

namespace App\Http\Controllers;
use App\Models\Transaksi;
use Illuminate\View\View;
use App\Models\Detiltransaksi;

class CetakController extends Controller
{
    //

    public function receipt():View
    {
        $id=session()->get('id');

        $transaksi=Transaksi::find($id);
        //dd ($order)
        $detiltransaksi=Detiltransaksi::where('id_transaksi',$id)->get();
        return view('penjualan.receipt')->with([
            'dataTransaksi'=>$transaksi,
            'dataDetiltransaksi'=>$detiltransaksi
        ]);
    }
}
