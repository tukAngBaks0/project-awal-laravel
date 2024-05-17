<?php

namespace App\Http\Controllers;

use App\Models\Pelanggan;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class PelangganController extends Controller
{
    //
    public function index()
    {
        return view('pelanggan.tabel',[
            "title" => "Pelanggan",
            "data" => Pelanggan::all()
        ]);
    }
    public function create():View
    {
        return view('pelanggan.tambah')->with(["title" => "Tambah Data Pelanggan"]);
    }
    public function store (Request $request): RedirectResponse
    {
        $request->validate([
            "nama"=>"required",
            "telepon"=>"required",
            "alamat"=>"nullable",
        ]);
        Pelanggan::create($request->all());
        return redirect()->route('pelanggan.index')->with('success','Data Pelanggan
        Berhasil Ditambahkan');
    }
    public function edit(Pelanggan $pelanggan):View
    {
        return view('pelanggan.edit',compact('pelanggan'))->with(["title" => "ubah
        Data PElanggan"]);
    }
    public function update (Request $request, Pelanggan $pelanggan):RedirectResponse
    {
        $request->validate([
            "nama"=>"required",
            "telepon"=>"required",
            "alamat"=>"nullable",
        ]);

        $pelanggan->update($request->all());

        return redirect()->route('pelanggan.index')
        ->with('updated','Data Pelanggan Berhasil Diubah');
    }
    public function show(Pelanggan $pelanggan):View
    {
        return view('pelanggan.tampil',compact('pelanggan'))
        ->with(["title" => "Data Pelanggan"]);
    }
}