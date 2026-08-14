<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('tblinventaris', function (Blueprint $table) {
            $table->tinyInteger('is_disewakan')->default(0)->after('kode_pengadaan');
            $table->decimal('harga_sewa', 15, 2)->default(0)->after('is_disewakan');
            $table->string('acc_pendapatan_sewa', 20)->nullable()->after('harga_sewa');
        });

        Schema::create('tblinventaris_sewa', function (Blueprint $table) {
            $table->id('id_sewa');
            $table->string('sewa_sysno', 30)->unique();
            $table->string('sewa_docno', 30);
            $table->date('tgl_sewa');
            $table->string('rkode_inventaris', 30);
            $table->decimal('jumlah_sewa', 15, 2)->default(0);
            $table->string('keterangan', 255)->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tblinventaris_sewa');
        Schema::table('tblinventaris', function (Blueprint $table) {
            $table->dropColumn(['is_disewakan', 'harga_sewa', 'acc_pendapatan_sewa']);
        });
    }
};
