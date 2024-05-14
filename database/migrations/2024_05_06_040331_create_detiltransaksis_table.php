<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
{
Schema::create('detiltransaksis', function (Blueprint $table) {
$table->id();
$table->bigInteger('id_transaksi')->unsigned();
$table->bigInteger('id_produk')->unsigned();
$table->integer('qty');
$table->double('harga');
$table->timestamps();
});
Schema::table('detiltransaksis', function(Blueprint $table) {
$table->foreign('id_transaksi')->references('id')->on('transaksis')
->onUpdate('cascade')
->onDelete('cascade');
$table->foreign('id_produk')->references('id')->on('produks')
->onUpdate('cascade')
->onDelete('cascade');
});
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
    Schema::table('detiltransaksis', function(Blueprint $table) {
    $table->dropForeign('detiltransaksis_order_id_foreign');
    });
    Schema::table('detiltransaksis', function(Blueprint $table) {
        $table->dropIndex('detiltransaksis_order_id_foreign');
});
Schema::table('detiltransaksis', function(Blueprint $table) {
$table->dropForeign('detiltransaksis_product_id_foreign');
});
Schema::table('detiltransaksis', function(Blueprint $table) {
$table->dropIndex('detiltransaksis_product_id_foreign');
});
Schema::dropIfExists('detiltransaksis');
    }
};
