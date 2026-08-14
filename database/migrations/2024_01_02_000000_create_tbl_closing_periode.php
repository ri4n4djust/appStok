<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('tbl_closing_periode', function (Blueprint $table) {
            $table->id();
            $table->smallInteger('tahun');
            $table->tinyInteger('bulan'); // 1-12
            $table->decimal('saldo_penutup', 20, 2)->default(0);
            $table->boolean('is_locked')->default(false);
            $table->timestamp('locked_at')->nullable();
            $table->string('locked_by', 100)->nullable();
            $table->timestamps();

            $table->unique(['tahun', 'bulan']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tbl_closing_periode');
    }
};
