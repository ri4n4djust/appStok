<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('tblinventaris_sewa', function (Blueprint $table) {
            $table->unsignedInteger('periode_sewa')->default(1)->after('jumlah_sewa');
            $table->decimal('jumlah_penyusutan', 15, 2)->default(0)->after('periode_sewa');
        });
    }

    public function down(): void
    {
        Schema::table('tblinventaris_sewa', function (Blueprint $table) {
            $table->dropColumn(['periode_sewa', 'jumlah_penyusutan']);
        });
    }
};
