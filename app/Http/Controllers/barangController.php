<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Barang;
use App\Models\Bbm;
use App\Models\Persediaan;
use App\Models\Opnum;
use App\Models\OpnumDetail;
use Illuminate\Support\Facades\DB;

class barangController extends Controller
{
    //
    public function index()
    {
        $posts = Barang::join('tblkategori', 'tblbarang.ktgBarang', '=', 'tblkategori.kodeKtg')
                ->join('tblpersediaan', 'tblbarang.kdBarang', 'tblpersediaan.kdPersediaan')
                ->get(['tblbarang.*', 'tblkategori.namaKtg', 'tblpersediaan.stokPersediaan']);
        //$posts = Barang::latest()->get();
        $count = Barang::count();
        return response([
            'success' => true,
            'message' => 'List Semua Barang',
            'data' => $posts
        ], 200);
    }

    public function indexPersediaan()
    {
        $posts = Persediaan::join('tblkategori', 'tblpersediaan.ktgPersediaan', '=', 'tblkategori.kodeKtg')
                ->join('tblbarang', 'tblbarang.kdBarang', 'tblpersediaan.kdPersediaan')
                ->get(['tblpersediaan.*', 'tblbarang.accid','tblbarang.accid_persediaan','tblbarang.accid_biaya','tblkategori.namaKtg']);
        //$posts = Barang::latest()->get();
        $count = Barang::count();
        return response([
            'success' => true,
            'message' => 'List Semua Persediaan',
            'data' => $posts
        ], 200);
    }

    public function indexBbm(){
        $bbm = Bbm::join('tblpersediaan', 'tblpersediaan.kdPersediaan', 'tblbbm.code_bbm')
                    ->select('tblbbm.*', 'tblpersediaan.*')
                    ->get();
        //$posts = Barang::latest()->get();
        $count = Barang::count();
        return response([
            'success' => true,
            'message' => 'List Semua bbm',
            'data' => $bbm
        ], 200);

    }

    public function indexNosel(Request $request){
        $where = '';
        $filter = $request->input('key1');
        if(!empty($filter)){
            $where = "and a.r_bbm='$filter' ";
        };
        
        // $bbm = Bbm::get();
        //$posts = Barang::latest()->get();
        $nosel = DB::select("Select a.*,b.last_price from tblnosel_detail a inner join tblbbm b where a.r_bbm=b.id $where ");
        $count = Barang::count();
        return response([
            'success' => true,
            'message' => 'List Semua Nosel',
            'data' => $nosel
        ], 200);

    }

    public function indexKategori(){
        $kat = DB::table('tblkategori')->get();
        return response([
            'success' => true,
            'message' => 'List Semua Kategori',
            'data' => $kat
        ], 200);
    }

    public function update(Request $request)
    {        
        try{
            $exception = DB::transaction(function() use ($request){ 
                $post = Barang::whereId($request->input('id'))->update([
                    // 'kdBarang'     => $request->input('kdBarang'),
                    'nmBarang'     => $request->input('nmBarang'),
                    'hrgPokok'   => $request->input('hrgPokok'),
                    'hrgJual'   => $request->input('hrgJual'),
                    // 'stkBarang'   => '0',
                    // 'deskripsi'   => $request->input('deskripsi'),
                    // 'ktgBarang' => $request->input('ktgBarang'),
                    // 'satuanBarang' => $request->input('satuanBarang'),
                    'merek' => $request->input('merek'),
                    // 'qtyMin' => $request->input('qtyMin'),
                    // 'qtyMax' => $request->input('qtyMax'),
                    // 'stsBarang' => $request->input('stsBarang'),
                ]);
                DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Post Berhasil Diupdate!',
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
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
    public function destroy($id)
    {
        $post = Barang::findOrFail($id);
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

    public function simpanOpnum(Request $request){
        try{
            $exception = DB::transaction(function() use ($request){ 
                $kdOpnum = $request[0]['kdOpnum'];
                $userOpnum = $request[0]['userOpnum'];
                $totalOpnum = 0 ; // $request[0]['totalOpnum'];
                $tglOpnum = date("Y-m-d", strtotime($request[0]['tglOpnum']));
                

                OpnumDetail::where('r_opnum', $kdOpnum)->delete();
                $detop = $request[1];
                for ($i = 0; $i < count($detop); $i++) {

                        $kdBarang = $detop[$i]['kdBarang'];
                        $nmBarang = $detop[$i]['nmBarang'];
                        $qty = $detop[$i]['qty'];
                        $posting = $detop[$i]['posting'];
                        $selisih = $detop[$i]['selisih'];
                        // $total = $detop[$i]['total'];
                        // $hrg = $detop[$i]['hrgJual'];

                        // $bbm = DB::table('tblbbm')->where('code_bbm', $kdBarang)->first();
                        if($qty != ''){
                            // if(Persediaan::where('kdPersediaan', $kdBarang )->exists()){
                                DB::table('tblpersediaan')->where('kdPersediaan', $kdBarang)->update([
                                    'stokPersediaan' => $qty,
                                ]);
                            // }else{
                                // DB::table('tblbarang')->where('kdBarang', $kdBarang)->update([
                                    // 'stkBarang' => $qty,
                                    // 'hrgJual' => $hrg,
                                // ]);
                            // }
                        }
                        
                        //========cek harga per liter sesuai stok fifo
                        $kdb = $detop[$i]['kdBarang'];
                        $kdtrans = $request[0]['kdOpnum'];
                        $id_fifo = DB::table('tblstok_fifo')->select('*')->where('kd_barang','=',$kdb)->where('stok', '!=', '0')->min('id');
                        $stok_fifo = DB::table('tblstok_fifo')->select('*')->where('id', $id_fifo)->first();
                        // $harga_fifo = DB::table('tblstok_fifo')->select('harga')->where('id', $id_fifo)->first();
                        // print_r( $stok_fifo );
                        $total_hpp = 0;
                        $sisa = $selisih;
                        $total_liter = $selisih;
                        
                        while($sisa > 0){
                            $idn_fifo = DB::table('tblstok_fifo')->select('*')->where('kd_barang','=',$kdb)->where('stok', '!=', '0')->min('id');
                            $stokn_fifo = DB::table('tblstok_fifo')->where('id', $idn_fifo)->first();
                            // $hargan_fifo = DB::table('tblstok_fifo')->where('id', $idn_fifo)->first()->harga;

                            $stokn_fifo = json_decode(json_encode($stokn_fifo), true);

                            if($sisa <= $stokn_fifo['stok']){
                                DB::table('tblstok_fifo')->where('id', '=', $idn_fifo )->update([
                                    'stok' => $stokn_fifo['stok'] - $total_liter,
                                ]);
                                $total_hpp += $sisa * $stokn_fifo['harga'] ;
                                insert_trans_stok($kdtrans,$idn_fifo,$sisa,$stokn_fifo['harga']);
                                $sisa = 0;
                            }else{
                                $idnew_fifo = DB::table('tblstok_fifo')->select('*')->where('kd_barang','=',$kdb)->where('stok', '!=', '0')->min('id');
                                $stoknew_fifo = DB::table('tblstok_fifo')->where('id', $idnew_fifo)->first();
                                // $harganew_fifo = DB::table('tblstok_fifo')->select('harga')->where('id', $id_fifo)->first()->harga;

                                $stoknew_fifo = json_decode(json_encode($stoknew_fifo), true);
                                // $new_sisa = $total_liter - $sisa;
                                
                                DB::table('tblstok_fifo')->where('id', '=', $idnew_fifo )->update([
                                    'stok' => $stoknew_fifo['stok'] - $stoknew_fifo['stok'],
                                ]);
                                $total_hpp = $stoknew_fifo['stok'] * $stoknew_fifo['harga'] ;
                                insert_trans_stok($kdtrans,$idnew_fifo,$stoknew_fifo['stok'],$stoknew_fifo['harga']);
                                $sisa = $total_liter - $stoknew_fifo['stok']; 
                                if($sisa > 0){
                                    $idnew1_fifo = DB::table('tblstok_fifo')->select('*')->where('kd_barang','=',$kdb)->where('stok', '!=', '0')->min('id');
                                    $stoknew1_fifo = DB::table('tblstok_fifo')->where('id', $idnew1_fifo)->first();
                                    // $harganew_fifo = DB::table('tblstok_fifo')->select('harga')->where('id', $id_fifo)->first()->harga;

                                    $stoknew1_fifo = json_decode(json_encode($stoknew1_fifo), true);
                                    // $new_sisa = $total_liter - $sisa;
                                    
                                    DB::table('tblstok_fifo')->where('id', '=', $idnew1_fifo )->update([
                                        'stok' => $stoknew1_fifo['stok'] - $sisa,
                                    ]);
                                    $total_hpp += $sisa * $stoknew1_fifo['harga'] ;
                                    insert_trans_stok($kdtrans,$idnew1_fifo,$sisa,$stoknew1_fifo['harga']);
                                    $sisa = 0;

                                }
                                // echo $sisa ;
                            };
                        }
                        
                        //============== end hpp fifo
                        

                        $detail = [
                            [
                                'r_opnum' => $kdOpnum,
                                'r_kdPersediaan' => $kdBarang,
                                'nmPersediaan' => $nmBarang,
                                'selisihOpnum' => $selisih,
                                'nilaiOpnum' => $total_hpp,
                                'keteranganOpnum' => $detop[$i]['keterangan'],
                                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                                'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                            ]
                        ];

                        
                        if($posting === "1"){
                            $total_harga = $total_hpp ; // $detop[$i]['total'];
                            $totalOpnum += $total_hpp ;
                            //===========jurnal
                            $pphps4 = 10 ; //$detop[0]['pphps4'];
                            $acc_id_k = $detop[$i]['accid_persediaan']; // acc id yg di debet
                            $acc_id_d = $detop[$i]['accid_biaya']; // acc id yg di debet
                            // $accid = $detpro[$i]['accid']; // acc id yg di debet
                            $accid_kas = '11110'; // $request[0]['subtotal']; // acc id yg di kredit

                            $acc_laba = '32300';
                            $acc_pph = '23100'; // acc hutang pph
                            $pphps4_dibayar = $total_harga * $pphps4 / 100 ;

                            $memo = 'Opnum';
                            $jurnal = 'JK';
                            insert_gl($kdOpnum,$tglOpnum,$total_harga,$memo,$jurnal);
                            $rgl = DB::table('general_ledger')->get()->last()->notrans;
                            $ac = [
                                [
                                    'rgl' => $rgl,
                                    'acc_id' => $acc_id_d,
                                    'debet' => $total_harga,
                                    'kredit' => 0,
                                    'trans_detail' => 'Opnum',
                                    'void_flag' => 0,
                                ],
                                [
                                    'rgl' => $rgl,
                                    'acc_id' => $acc_id_k,
                                    'debet' => 0,
                                    'kredit' => $total_harga,
                                    'trans_detail' => 'Opnum',
                                    'void_flag' => 0,
                                ],
                                [
                                    'rgl' => $rgl,
                                    'acc_id' => $acc_laba,
                                    'debet' => $total_harga,
                                    'kredit' => 0,
                                    'trans_detail' => 'Opnum',
                                    'void_flag' => 0,
                                ],
                                //=========pph ps 4
                                [
                                    'rgl' => $rgl,
                                    'acc_id' => $accid_kas,
                                    'debet' => $pphps4_dibayar,
                                    'kredit' => 0,
                                    'trans_detail' => 'Trans-biaya',
                                    'void_flag' => 0,
                                ],
                                [
                                    'rgl' => $rgl,
                                    'acc_id' => $acc_pph,
                                    'debet' => 0,
                                    'kredit' => $pphps4_dibayar,
                                    'trans_detail' => 'Trans-biaya',
                                    'void_flag' => 0,
                                ]
                                //=====================endpph ps4
                            ];
                            
                            insert_gl_detail($ac);
                            //===========end jurnal
                        }
                        OpnumDetail::insert($detail);
                }

                $post = Opnum::upsert([
                    'kdOpnum'     => $kdOpnum,
                    'tglOpnum'     => $tglOpnum,
                    'totalOpnum'     => $totalOpnum,
                    'userOpnum'   => $userOpnum,
                    'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                    'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                ],
                [
                    'tglOpnum'     => $tglOpnum,
                    'totalOpnum'     => $totalOpnum,
                    'userOpnum'   => $userOpnum,
                    'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                    'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                ]
            );
                    


            DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Post Berhasil di insert!',
                    // 'data' => $detail
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
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

    public function simpanBarang(Request $request){
        try{
            $exception = DB::transaction(function() use ($request){ 
                $kdBarang = $request->input('kdB');
                $nmBarang = $request->input('nmB');
                $satuan = $request->input('satuanB');
                $kategori = $request->input('kdktg');
                $hrgBeli = $request->input('hrgBeli');
                $hrgJual = $request->input('hrgJual');
                $merek = $request->input('merek');
                $qtymin = $request->input('qtyMin');
                $qtymax = $request->input('qtyMax');

                // $tglOpnum = date("Y-m-d", strtotime($request[0]['tglOpnum']));
                $post = Barang::upsert([
                        'kdBarang'     => $kdBarang,
                        'nmBarang'     => $nmBarang,
                        'hrgPokok'     => $hrgBeli,
                        'hrgJual'       => $hrgJual,
                        'ktgBarang'   => $kategori,
                        'stkBarang'   => '0',
                        'stsBarang'   => '0',
                        'satuanBarang'     => $satuan,
                        'merek'     => $merek,
                        'qtyMin'       => $qtymin,
                        'qtyMax'   => $qtymax,
                        'deskripsi'     => 'des',
                        'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                        'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                    ],
                    [
                        'nmBarang'     => $nmBarang,
                        'hrgPokok'     => $hrgBeli,
                        'hrgJual'       => $hrgJual,
                        'ktgBarang'   => $kategori,
                        'satuanBarang'     => $satuan,
                        'merek'     => $merek,
                        'qtyMin'       => $qtymin,
                        'qtyMax'   => $qtymax,
                        'deskripsi'     => 'des',
                        'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                    ]
                );

                
            DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Barang Berhasil di insert!',
                    // 'data' => $detail
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
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

    public function updateHrgBbm(Request $request){
        try{
            $exception = DB::transaction(function() use ($request){ 
                $kdBarang = $request->input('code_bbm');
                $tgl = date("Y-m-d", strtotime($request->input('tglPerubahan')));
                Bbm::where('code_bbm', $kdBarang)->update([
                    'last_price' => $request->input('harga_pokok_baru'),
                    'sale_price' => $request->input('harga_baru'),
                    'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                ]);
                DB::table('tblnosel_detail')->where('r_code_bbm', $kdBarang)->update([
                    'harga' => $request->input('harga_baru'),
                ]);
                DB::table('tblpersediaan')->where('kdPersediaan', $kdBarang)->update([
                    'salePrice' => $request->input('harga_baru'),
                    'lastPrice' => $request->input('harga_pokok_baru'),
                ]);
                DB::table('tblperubahan_hargabbm')->insert([
                    'code_bbm'   => $request->input('code_bbm'),
                    'harga_pokok_lama'   => $request->input('harga_pokok_lama'),
                    'harga_pokok_baru' => $request->input('harga_pokok_baru'),
                    'harga_lama'   => $request->input('harga_lama'),
                    'harga_baru' => $request->input('harga_baru'),
                    'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                    'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                ]);

                $r_idPerubahan = DB::getPdo()->lastInsertId();

                //======update hpp
                DB::table('tblstokbbm_hpp')->insert([
                    'r_perubahan'   => $r_idPerubahan,
                    'r_bbm'   => $request->input('code_bbm'),
                    'tgl_stok' => $tgl,
                    'stok'   => $request->input('stok'),
                    'h_pokok' => $request->input('harga_pokok_lama'),
                    'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                    'updated_at' => \Carbon\Carbon::now()->toDateTimeString()
                ]);
                //=========end update hpp
                DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Barang Berhasil di insert!',
                    // 'data' => $detail
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
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

    public function stokFifo(){
        $data = DB::table('tblstok_fifo')->where('stok', '!=', '0')->get();

        return response()->json([
            'success' => true,
            'message' => 'data fifo',
            'data' => $data
        ], 200);

    }

    public function resetdb(Request $request){
        try{
            $exception = DB::transaction(function() use ($request){
                
                DB::table('tblstok_fifo')->truncate();
                DB::table('tblstokbbm_hpp')->truncate();                
                DB::table('tbltera_detail')->truncate();
                DB::table('tblprofit')->truncate();
                DB::table('tbltransaksi_nosel')->truncate();
                DB::table('tblheader_aplusan')->truncate();
                DB::table('tblbiaya')->truncate();
                DB::table('tblkupon')->truncate();
                DB::table('tbllinkaja')->truncate();
                DB::table('tblopnum_detail')->truncate();
                DB::table('tblopnum')->truncate();
                DB::table('tblpembelian')->truncate();
                DB::table('tblpembelian_detail')->truncate();
                DB::table('tblpenjualan')->truncate();
                DB::table('tblpenjualan_detail')->truncate();
                DB::table('tblperubahan_hargabbm')->truncate();
                DB::table('tblpobbm')->truncate();
                DB::table('tblpobbm_detail')->truncate();
                DB::table('tblterimabbm_detail')->truncate();
                DB::table('tblterimabbm')->truncate();
                DB::table('tblpenjualankupon')->truncate();
                DB::table('general_ledger')->truncate();
                DB::table('gl_detail')->truncate();
                DB::table('tblpelanggan')->update([
                    'deposit' => '0',
                ]);
                DB::table('tblpersediaan')->update([
                    'stokPersediaan' => '0',
                    'lastPrice' => '0',
                    'salePrice' => '0'
                ]);
                DB::table('tblbbm')->update([
                    'stokBbm' => '0',
                    'last_price' => '0',
                    'sale_price' => '0',
                    'last_meter' => '0'
                ]);

                DB::commit();
            });
            if(is_null($exception)) {
                return response()->json([
                    'success' => true,
                    'message' => 'Barang Berhasil di insert!',
                    // 'data' => $detail
                ], 200);
            } else {
                DB::rollback();
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
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
