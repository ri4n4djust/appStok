<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jasa;
use Illuminate\Support\Facades\DB;

class jasaController extends Controller
{
    //
    public function index()
    {
        $posts = Jasa::get();
        //$posts = Barang::latest()->get();
        return response([
            'success' => true,
            'message' => 'List Semua Jasa',
            'data' => $posts
        ], 200);
    }

    public function destroy($id)
    {
        $post = Jasa::findOrFail($id);
        // $kodebarang = $post->kdBarang;
        
        $post->delete();

        if ($post) {
            return response()->json([
                'success' => true,
                'message' => 'Post Berhasil Dihapus!',
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Post Gagal Dihapus!',
            ], 500);
        }
    }

    public function simpanJasa(Request $request){
        try{
            $exception = DB::transaction(function() use ($request){ 
                // $id = $request->input('idB');
                $kdJasa = $request->input('kdJasa');
                $nmJasa = $request->input('nmJasa');
                $biayaJasa = $request->input('biayaJasa');
                $deskripsi = $request->input('deskripsi');

                $accid = $request->input('accid');
                $accid_jasa = $request->input('accid_jasa');

                // $tglOpnum = date("Y-m-d", strtotime($request[0]['tglOpnum']));
                $post = Jasa::upsert([
                        [
                            'kdJasa'     => $kdJasa,
                            'nmJasa'     => $nmJasa,
                            'biayaJasa'     => $biayaJasa,
                            'deskripsi'       => $deskripsi,
                            'accid'   => $accid,
                            'accid_jasa'   => $accid_jasa,
                            'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                            'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
                        ],
                    ],
                    uniqueBy: ['id', 'kdBarang'],
                    update: [
                        'kdJasa'     => $kdJasa,
                            'nmJasa'     => $nmJasa,
                            'biayaJasa'     => $biayaJasa,
                            'deskripsi'       => $deskripsi,
                            'accid'   => $accid,
                            'accid_jasa'   => $accid_jasa,
                            'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                            'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
                    ],
                    // ['id','kdBarang'],
                );                

                
            DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Jasa Berhasil di insert!',
                    // 'data' => $detail
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Jasa Gagal Diupdate!',
                ], 500);
            }
        } catch (\Exception $e) {
            DB::rollback();
            // something went wrong
            return response()->json([
             'success' => false,
             'message' => 'exception'.$e,
         ], 400);
        }

    }
}
