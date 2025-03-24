<template>
    <div class="layout-px-spacing apps-invoice-add">
        <teleport to="#breadcrumb">
            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">
                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:;">Apps</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>Penjualan</span></li>
                            </ol>
                        </nav>
                    </div>
                </li>
            </ul>
        </teleport>
        <div class="row invoice layout-top-spacing layout-spacing">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="doc-container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="invoice-content">
                                <div class="invoice-detail-body">
                                    <div class="invoice-detail-title">
                                       
                                        <div class="invoice-title">
                                            Edit Invoice Penjualan
                                        </div>
                                    </div>

                                    <div class="invoice-detail-header">
                                        <div class="row justify-content-between">
                                            <div class="col-xl-5 invoice-address-company">

                                                <div class="invoice-address-company-fields">
                                                    <div class="form-group row">
                                                        <label for="company-name" class="col-sm-3 col-form-label col-form-label-sm">No Nota</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" v-model="params.noNota" id="number" class="form-control form-control-sm" disabled />
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="company-email" class="col-sm-3 col-form-label col-form-label-sm">Tgl</label>
                                                        <div class="col-sm-9">
                                                            <flat-pickr v-model="params.tglNota" class="form-control form-control-sm flatpickr active" placeholder="Invoice Date"></flat-pickr>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="company-address" class="col-sm-3 col-form-label col-form-label-sm">Term</label>
                                                        <div class="col-sm-9">
                                                            <select id="inputState" v-model="params.termPenjualan" class="form-select">
                                                                <option value="0" selected>Cash</option>
                                                                <option value="1">Kredit</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="company-phone" class="col-sm-3 col-form-label col-form-label-sm">Jatuh Tempo</label>
                                                        <div class="col-sm-9">
                                                            <flat-pickr v-model="params.jthTempo" class="form-control form-control-sm flatpickr active" placeholder="Due Date"></flat-pickr>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xl-5 invoice-address-client">

                                                <div class="invoice-address-client-fields">
                                                    <div class="form-group row">
                                                        <label for="client-name" class="col-sm-3 col-form-label col-form-label-sm">Pelanggan</label>
                                                        <div class="col-sm-9">
                                                            <multiselect 
                                                                v-model="paramspelanggan" 
                                                                :options="penjualan.pelanggans" 
                                                                :searchable="true"
                                                                :allow-empty="false"
                                                                track-by="nmPelanggan"
                                                                label="nmPelanggan"
                                                                open-direction="top"
                                                                placeholder="Choose..." 
                                                                selected-label="" 
                                                                select-label="" 
                                                                deselect-label="">
                                                            </multiselect>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="client-address" class="col-sm-3 col-form-label col-form-label-sm">Address</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" v-model="paramspelanggan.almtPelanggan" class="form-control form-control-sm" placeholder="XYZ Street" />
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label for="client-phone" class="col-sm-3 col-form-label col-form-label-sm">Phone</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" v-model="paramspelanggan.noHpPelanggan" class="form-control form-control-sm" placeholder="(123) 456 789" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>

                                    <div class="invoice-detail-items">
                                        <ul class="nav nav-tabs mb-3 mt-3" id="simpletab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">BARANG</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">JASA</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="simpletabContent">
                                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                                <div class="invoice-detail-items">
                                                    <div class="row">
                                                        <div class="form-group col-md-3">
                                                            <label for="inputCity">NAMA BARANG</label>
                                                            <multiselect 
                                                                v-model="brg" 
                                                                :options="penjualan.barangs" 
                                                                :searchable="true"
                                                                track-by="nmBarang"
                                                                label="nmBarang"
                                                                open-direction="top"
                                                                placeholder="Choose..." 
                                                                selected-label="" 
                                                                select-label="" >
                                                            </multiselect>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                            <label for="inputState">HARGA</label>
                                                            <input type="text" v-model="brg.hrgJual" class="form-control form-control-sm" placeholder="Price" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-sm-1">
                                                            <label for="inputZip">QTY</label>
                                                            <input type="text" v-model="qty" class="form-control form-control-sm" placeholder="Quantity" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-sm-1">
                                                            <label for="inputZip">Disc</label>
                                                            <input type="text" v-model="disc" class="form-control form-control-sm" placeholder="Diskon" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                            <label for="satuan">SATUAN</label>
                                                            <input type="text" v-model="brg.satuanBarang" class="form-control form-control-sm" id="satuan" />
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                            <label for="inputZip">TOTAL</label><br>
                                                            <!-- {{ new Intl.NumberFormat().format(brg.hrgJual * qty) }} -->
                                                            <input type="text" v-model="tot" class="form-control form-control-sm" placeholder="Quantity" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-md-1">
                                                            <label for="aksi">Aksi</label>
                                                            <button @click="addToCart(brg)" class="btn btn-xs btn-primary">
                                                                + 
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                <div class="invoice-detail-items">
                                                    <div class="row">
                                                        <div class="form-group col-md-4">
                                                            <label for="inputCity">NAMA JASA</label>
                                                            <multiselect 
                                                                v-model="jsa" 
                                                                :options="penjualan.jasas" 
                                                                :searchable="true"
                                                                track-by="nmJasa"
                                                                label="nmJasa"
                                                                open-direction="top"
                                                                placeholder="Choose..." 
                                                                selected-label="" 
                                                                select-label="" >
                                                            </multiselect>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                            <label for="inputState">HARGA</label>
                                                            <input type="text" v-model="jsa.biayaJasa" class="form-control form-control-sm" placeholder="Price" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-sm-1">
                                                            <label for="inputZip">QTY</label>
                                                            <input type="text" v-model="qtyjasa" class="form-control form-control-sm" placeholder="Quantity" @keypress="onlyNumber" />
                                                        </div>
                                                        
                                                        <div class="form-group col-md-2">
                                                            <label for="inputZip">TOTAL</label><br>
                                                            <!-- {{ new Intl.NumberFormat().format(brg.hrgJual * qty) }} -->
                                                            <input type="text" v-model="totjasa" class="form-control form-control-sm" placeholder="Quantity" @keypress="onlyNumber" />
                                                        </div>
                                                        <div class="form-group col-md-1">
                                                            <label for="aksi">Aksi</label>
                                                            <button @click="addToCartJasa(jsa)" class="btn btn-xs btn-primary">
                                                                + 
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="invoice-detail-items">
                                        <div class="inv--product-table-section">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered item-table">
                                                    <thead>
                                                        <tr>
                                                            <th>Nama Barang</th>
                                                            <th>Harga</th>
                                                            <th>Qty</th>
                                                            <th>Satuan</th>
                                                            <th>Disc</th>
                                                            <th>Total</th>
                                                            <th>Aksi</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="item in cartItemsPen" :key="item.kdBarang">
                                                            <td class="description">{{ item.nmBarang }}</td>
                                                            <td class="rate">{{ new Intl.NumberFormat().format(item.hrgJual) }}</td>
                                                            <td class="qty">{{ item.qty }}</td>
                                                            <td class="qty">{{ item.satuan }}</td>
                                                            <td class="amount">{{ new Intl.NumberFormat().format(item.disc) }}</td>
                                                            <td class="amount">{{ new Intl.NumberFormat().format(item.total) }}</td>
                                                            <td class="tax">
                                                                <button type="button" class="btn btn-secondary additem btn-sm" @click="removeItem(id=item.kdBarang)">Hapus</button>
                                                                <!-- <div class="icon-container">
                                                                    <i data-feather="trash"></i><span class="icon-name"> trash</span>
                                                                </div> -->
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <!-- <button type="button" class="btn btn-secondary additem btn-sm" @click="add_item()">Add Item</button> -->
                                    </div>
                                            

                                    <div class="invoice-detail-items" >
                                        <div class="inv--product-table-section">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered item-table">
                                                    <thead>
                                                        <tr>
                                                            <th>Detail Jasa</th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                        <tr>
                                                            <th>Code</th>
                                                            <th>Nama Jasa</th>
                                                            <th>Biaya</th>
                                                            <th>Qty</th>
                                                            <th>Total</th>
                                                            <th>Aksi</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="itemjasa in cartItemsPenJasa" :key="itemjasa.kdJasa">
                                                            <td class="description">{{ itemjasa.kdJasa }}</td>
                                                            <td class="description">{{ itemjasa.nmJasa }}</td>
                                                            <td class="rate">{{ new Intl.NumberFormat().format(itemjasa.biayaJasa) }}</td>
                                                            <td class="qty">{{ itemjasa.qtyjasa }}</td>
                                                            <td class="amount">{{ new Intl.NumberFormat().format(itemjasa.total) }}</td>
                                                            <td class="tax">
                                                                <button type="button" class="btn btn-secondary additem btn-sm" @click="removeItemJasa(id=itemjasa.kdJasa)">Hapus</button>
                                                                <!-- <div class="icon-container">
                                                                    <i data-feather="trash"></i><span class="icon-name"> trash</span>
                                                                </div> -->
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <!-- <button type="button" class="btn btn-secondary additem btn-sm" @click="add_item()">Add Item</button> -->
                                    </div>
                                    

                                    <div class="invoice-detail-total">
                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="invoice-actions-btn">
                                                    <div class="invoice-action-btn">
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <div v-if="divpajak">
                                                                    <a href="javascript:;" class="btn btn-primary btn-send" @click="taxRemove" >- pajak</a>
                                                                </div>
                                                                <div v-if="!divpajak">
                                                                    <a href="javascript:;" class="btn btn-primary btn-send" @click="taxSelected" >+ pajak</a>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <!-- <router-link to="/apps/invoice/preview" class="btn btn-dark btn-preview">Preview</router-link> -->
                                                                <a href="javascript:;" @click="addPayment" class="btn btn-dark btn-preview" data-bs-toggle="modal" data-bs-target="#modalPayment">Pembayaran</a>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <a href="javascript:;" @click="simpanPenjualan" class="btn btn-success btn-download">Save</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            

                                            <div class="col-md-6">
                                                <div class="totals-row">
                                                    <div class="invoice-totals-row invoice-summary-subtotal">
                                                        <div class="invoice-summary-label">Sub Total</div>
                                                            <div class="invoice-summary-label"></div>
                                                        <div class="invoice-summary-value">
                                                            <div class="subtotal-amount"><span class="currency"></span><span class="amount">{{new Intl.NumberFormat().format(subtotal)}}</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="invoice-totals-row invoice-summary-subtotal" >
                                                        <div class="invoice-summary-label">Total Jasa</div>
                                                         <div class="invoice-summary-label"></div>
                                                        <div class="invoice-summary-value">
                                                            <div class="subtotal-amount"><span class="currency"></span><span class="amount">{{new Intl.NumberFormat().format(subtotaljasa)}}</span></div>
                                                        </div>
                                                    </div>
                                                    <div v-show="divpajak">
                                                        <div class="invoice-totals-row invoice-summary-tax" >
                                                            <div class="invoice-summary-label">Pajak</div>
                                                            <div class="invoice-summary-value">
                                                                <div class="tax-amount"><span class="currency"></span>
                                                                    <span>{{ new Intl.NumberFormat().format(Math.floor( tax )) }}</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="invoice-totals-row invoice-summary-balance-due">
                                                        <div class="invoice-summary-label">Total</div>
                                                         <!-- <div class="invoice-summary-label"></div> -->
                                                        <div class="invoice-summary-value">
                                                            <div class="balance-due-amount"><span class="currency"></span>
                                                                <span>{{ new Intl.NumberFormat().format(Math.floor(total)) }}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="invoice-detail-note">
                                        <div class="row">
                                            <div class="col-md-12 align-self-center">
                                                <div class="form-group row invoice-note">
                                                    <label for="invoice-detail-notes" class="col-sm-12 col-form-label col-form-label-sm">Notes:</label>
                                                    <div class="col-sm-12">
                                                        <textarea
                                                            v-model="params.notes"
                                                            rows="3"
                                                            id="invoice-detail-notes"
                                                            class="form-control"
                                                            placeholder='Notes - For example, "Thank you for doing business with us"'
                                                        ></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</template>
<script setup>
 import { computed, onMounted, ref, onBeforeMount, onUnmounted } from 'vue';
    import '@/assets/sass/apps/invoice-add.scss';

    //flatpickr
    import flatPickr from 'vue-flatpickr-component';
    import 'flatpickr/dist/flatpickr.css';
    import '@/assets/sass/forms/custom-flatpickr.css';

    import Multiselect from '@suadelabs/vue3-multiselect';
    import '@suadelabs/vue3-multiselect/dist/vue3-multiselect.css';

    import moment from "moment";


    import { useStore } from 'vuex';
    import { useRouter, useRoute } from 'vue-router'

    import { useMeta } from '@/composables/use-meta';
    useMeta({ title: 'Edit Penjualan' });

    const store = useStore();
    const router = useRouter();
    const route = useRoute();

    const cartItemsPen = ref([])
    const cartItemsPenJasa = ref([])
    const subtotal = ref()
    const subtotaljasa = ref();
    const total = ref();
    const disc = ref(0);
    const tax = ref(0);
    const brg = ref({});
    const jsa = ref({});
    const qty = ref(1);
    const qtyjasa = ref(1);
    const tot = ref();
    const totjasa = ref();
    const divpajak = ref(false)
    // const oldnota = ref(headerfull.value.noPenjualan);
    // let nop = headerfull[0].noPenjualan;
    const props = defineProps({
        id: String,
        startDate: String,
        kd_trans: String,
        regu: String,
    });

    const params = ref({
        noNota: props.kd_trans,
        tglNota: props.startDate,// moment(tglP).format("YYYY-MM-DD"),
        term: 0,
        jthTempo: moment().format("YYYY-MM-DD"),
        notes: '',
        subtotal: subtotal,
        subtotaljasa: subtotaljasa,
        tax: tax,
        disc: disc,
        total: total, 
        termPenjualan: 0,
    });

    const paramspelanggan = ref({

    });

    const penjualan = computed(() => {
        const barangs = store.getters.StateBarang;
        const pelanggans = store.getters.StatePelanggan;
        const jasas = store.getters.StateJasa;
        const accs = store.getters.StateAcc;
        tot.value = (brg.value.hrgJual * qty.value) - (brg.value.hrgJual * qty.value * disc.value / 100);
        totjasa.value = jsa.value.biayaJasa * qtyjasa.value;
        // // const pajak = ref(store.state.pajak);
        // // console.log(suppliers)
        return { barangs, jasas, pelanggans, accs, tot, totjasa }
    });

    

    onMounted( async () => {
        // console.log(headerfull.value[0].noPenjualan)
        // params.noNota.value = headerfull.value[0].noPenjualan
        await store.dispatch('GetDetailPenjualan', params.value);
        const arr = store.getters.SdetailPenjualan;
        const brgArr = arr[1];

        for(let i = 0; i < brgArr.length; i++){
            let totalasli = brgArr[i].qty * brgArr[i].hrgJual;
            let jmldiscp = (brgArr[i].disc / totalasli) * 100;
            cartItemsPen.value.push({
                kdBarang: brgArr[i].r_kdBarang,
                nmBarang: brgArr[i].r_nmBarang,
                hrgJual: brgArr[i].hrgJual,
                qty: brgArr[i].qty,
                satuan: brgArr[i].satuanJual,
                disc: jmldiscp,
                total: brgArr[i].totalJual,
                accid:brgArr[i].accid,
                accid_persediaan:brgArr[i].accid_persediaan,
                accid_hpp:brgArr[i].accid_hpp,
                totalhpp:brgArr[i].qty * brgArr[i].hrgPokok,
                kategori:brgArr[i].ktgBarang

            })
        };
        localStorage.setItem('cartItemsPen', JSON.stringify(cartItemsPen.value));
        
        const jsaArr = arr[2];
        for(let i = 0; i < jsaArr.length; i++){
        cartItemsPenJasa.value.push({
            kdJasa: jsaArr[i].r_kdJasa,
            nmJasa: jsaArr[i].r_nmJasa,
            biayaJasa: jsaArr[i].biayaJasa,
            qtyjasa: jsaArr[i].qtyJasa,
            total: jsaArr[i].totalJasa,
            accid:jsaArr[i].accid,
            accid_jasa:jsaArr[i].accid_jasa,
        })
        };
        localStorage.setItem('cartItemsPenJasa', JSON.stringify(cartItemsPenJasa.value));

        store.dispatch('GetBarang');
        store.dispatch('GetJasa');

        paramspelanggan.value.kdPelanggan = arr[0][0].kdPelanggan;
        paramspelanggan.value.nmPelanggan = arr[0][0].nmPelanggan;
        paramspelanggan.value.noHpPelanggan = arr[0][0].noHpPelanggan;
        paramspelanggan.value.almtPelanggan = arr[0][0].almtPelanggan;

        getPelanggan();
        getAcc();
        getSubtotal();
        getTotal();
        getBarang();
        // setTimeout(() => {
        // console.log(arr[0])
        //     try {
                
    });

    onBeforeMount(() => {
        // setTimeout(() => {
            console.log(' before onmount edit')
            // try {
            //     store.dispatch('GetBarang')
            //     cartItemsPen.value = JSON.parse(localStorage.getItem('cartItemsPen'))
            //     params.value = JSON.parse(localStorage.getItem('headerEditPen'))
            // } catch(e) {
            //     cartItemsPen.value = []
            // }
        // }, 100) // 1 seems to work better for me than 0
    })

    onUnmounted(() => {
        // window.onbeforeunload = null
        // alert('kal tutup')
        localStorage.setItem('cartItemsPen', '[]');
        localStorage.setItem('cartItemsPenJasa', '[]')
        // localStorage.setItem('headerEditPen', '[]')
    })

    // const getBarang=() => {
    //     store.dispatch('GetBarang')
    // }
    const getPelanggan=() => {
        store.dispatch('GetPelanggan')
    }
    // const getNoPenjualan=() => {
    //     store.dispatch('GetNoPenjualan')
    // }
    const getAcc=() => {
        store.dispatch('GetAcc')
    }

    const getTotal=() =>{
        const pajak = store.state.pajak;
        const temptotal = subtotal.value 
        total.value = parseFloat(subtotal.value) + parseFloat(subtotaljasa.value)
        tax.value = subtotal.value * pajak /100
        console.log('total tanpa pajak :'+tax.value)
        // return { tot }
    }
    const getTotalWtax=() =>{
        const pajak = store.state.pajak;
        const temptotal = subtotal.value - (subtotal.value * disc.value / 100)
        tax.value = temptotal * pajak /100
        total.value = (subtotal.value - (subtotal.value * disc.value / 100)) + tax.value
        
        
        console.log('total dengan pajak:'+tax.value)
        // return { tot }
    }

    function taxSelected() {
        const pajak = store.state.pajak;
        const temptotal = subtotal.value - (subtotal.value * disc.value / 100)
        // const temppajak = temptotal * pajak /100
        
        tax.value = temptotal * pajak /100
        total.value = total.value + tax.value
        // total.value = (subtotal.value - (subtotal.value * disc.value / 100)) + tax.value
        divpajak.value = true
        // console.log(tax.value)
        getTotalWtax()
        // console.log('total : '+ temptotal + 'pajak :'+temppajak)
    }

    function taxRemove() {
        const pajak = store.state.pajak;
        const temptotal = subtotal.value - (subtotal.value * disc.value / 100)
        // const temppajak = total.value * pajak /100
        
        tax.value = temptotal * pajak /100
        total.value = total.value - tax.value
        // total.value = (subtotal.value - (subtotal.value * disc.value / 100)) + tax.value
        divpajak.value = false
        // console.log(tax.value)
        getTotal()
        // console.log('total : '+ temptotal + 'pajak :'+temppajak)
    }
    const getBarang=() => {
        store.dispatch('GetBarang')
        store.dispatch('GetJasa')
    }
    const simpanPenjualan=() => {
        store.dispatch('DeletePenjualan', { id:props.kd_trans})
        .then(response => {
            if(response.status == 200){
                console.log('berhasil dihapus')
                const header =params.value
                const headers =paramspelanggan.value
                const headerfull = Object.assign(header, headers)
                const detailjasa =cartItemsPenJasa.value;
                const detail =cartItemsPen.value
                store.dispatch('CreatePenjualan', [headerfull,detail,detailjasa] )
            
                total.value = 0
                subtotal.value = 0
                tax.value = 0
                // setTimeout(function() { 
                //     getCart(); 
                // }, 5000);
                router.push({ name: 'penjualan-barang' })
                total.value = 0
                divpajak.value = false
            }
            
        }).catch(error => {
            console.log('error: ', error)
            return
        })
        
    }

    function addToCart(brg) {
        // console.log(brg)
        if (localStorage.getItem('cartItemsPen')===null){
            cartItemsPen.value = [];
            // console.log(cartItems.value)
        }else{
            cartItemsPen.value = JSON.parse(localStorage.getItem('cartItemsPen'));
        }
            const oldItems = JSON.parse(localStorage.getItem('cartItemsPen')) || [];
            // console.log(oldItems)
            const existingItem = oldItems.find(({ kdBarang }) => kdBarang === brg.kdBarang);
            if (existingItem) {
                const objIndex = cartItemsPen.value.findIndex((e => e.kdBarang === brg.kdBarang));
                const oldName = cartItemsPen.value[objIndex].nmBarang;
                const oldQty = cartItemsPen.value[objIndex].qty;
                const oldTotal = cartItemsPen.value[objIndex].total;
                const oldTotalHpp = cartItemsPen.value[objIndex].totalhpp;
                const newQty = parseInt(oldQty) + parseInt(qty.value) ;
                const newTotal = parseInt(oldTotal) + parseInt(qty.value * brg.hrgJual) ;
                const newTotalHpp = parseInt(oldTotalHpp) + parseInt(qty.value * brg.hrgPokok) ;
                cartItemsPen.value[objIndex].qty = parseInt(newQty);
                cartItemsPen.value[objIndex].total = parseInt(newTotal);
                cartItemsPen.value[objIndex].totalhpp = parseInt(newTotalHpp);
                localStorage.setItem('cartItemsPen',JSON.stringify(cartItemsPen.value));
                alert(oldName+' Quantity Update')
                getCart();
                getTotal()
                // isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
            }else{
                cartItemsPen.value.push({
                kdBarang:brg.kdBarang, 
                nmBarang:brg.nmBarang,
                accid:brg.accid,
                accid_persediaan:brg.accid_persediaan,
                accid_hpp:brg.accid_hpp,
                hrgJual:brg.hrgJual,
                accid:brg.accid,
                accid_persediaan:brg.accid_persediaan,
                qty:qty.value,
                satuan:brg.satuanBarang,
                total:(qty.value * brg.hrgJual) - (qty.value * brg.hrgJual * disc.value / 100),
                disc:disc.value,
                totalhpp:qty.value * brg.hrgPokok, 
                kategori:brg.ktgBarang
            });
            localStorage.setItem('cartItemsPen',JSON.stringify(cartItemsPen.value));
            getCart();
            getTotal()
            // isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
            alert(brg.nmBarang+ " berhasil disimpan")
            }
    }

    function addToCartJasa(jsa) {
        // console.log(brg)
        if (localStorage.getItem('cartItemsPenJasa')===null){
            cartItemsPenJasa.value = [];
            // console.log(cartItems.value)
        }else{
            cartItemsPenJasa.value = JSON.parse(localStorage.getItem('cartItemsPenJasa'));
        }
            const oldItems = JSON.parse(localStorage.getItem('cartItemsPenJasa')) || [];
            // console.log(oldItems)
            const existingItem = oldItems.find(({ kdJasa }) => kdJasa === jsa.kdJasa);
            if (existingItem) {
                const objIndex = cartItemsPenJasa.value.findIndex((e => e.kdJasa === jsa.kdJasa));
                const oldName = cartItemsPenJasa.value[objIndex].nmJasa;
                const oldQty = cartItemsPenJasa.value[objIndex].qtyjasa;
                const oldTotal = cartItemsPenJasa.value[objIndex].total;
                const newQty = parseInt(oldQty) + parseInt(qtyjasa.value) ;
                const newTotal = parseInt(oldTotal) + parseInt(qtyjasa.value * jsa.biayaJasa) ;
                cartItemsPenJasa.value[objIndex].qtyjasa = parseInt(newQty);
                cartItemsPenJasa.value[objIndex].total = parseInt(newTotal);
                localStorage.setItem('cartItemsPenJasa',JSON.stringify(cartItemsPenJasa.value));
                alert(oldName+' Quantity Update')
                getCartJasa();
                getTotal()
                // isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
            }else{
                cartItemsPenJasa.value.push({
                    kdJasa:jsa.kdJasa, 
                    nmJasa:jsa.nmJasa,
                    accid:jsa.accid,
                    accid_jasa:jsa.accid_jasa,
                    biayaJasa:jsa.biayaJasa,
                    qtyjasa:qtyjasa.value,
                    total:qtyjasa.value * jsa.biayaJasa,
                });	
                localStorage.setItem('cartItemsPenJasa',JSON.stringify(cartItemsPenJasa.value));
                getCartJasa();
                getTotal();
                // isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
                alert(jsa.nmJasa+ " berhasil disimpan")
            }
    }

    function removeItem(id) {
        // alert(id)
        const arrayFromStroage = JSON.parse(localStorage.getItem('cartItemsPen'));
        const filtered = arrayFromStroage.filter(arrayFromStroage => arrayFromStroage.kdBarang !== id);
        localStorage.setItem('cartItemsPen', JSON.stringify(filtered));
        // cartItems.value.splice(index, 1)
        // this.isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
        getCart();
        getTotal();
        // subtotal.value = 0
        // total.value = 0
        // console.log(filtered)
        // alert(filtered.nmBarang)
    }

    function removeItemJasa(id) {
        // alert(id)
        const arrayFromStroage = JSON.parse(localStorage.getItem('cartItemsPenJasa'));
        const filtered = arrayFromStroage.filter(arrayFromStroage => arrayFromStroage.kdJasa !== id);
        localStorage.setItem('cartItemsPenJasa', JSON.stringify(filtered));
        // cartItems.value.splice(index, 1)
        // this.isicart = Object.keys(JSON.parse(localStorage.getItem('cartItemsP'))).length;
        getCartJasa();
        getTotal();
        // subtotal.value = 0
        // total.value = 0
    }

    function getCart() {
        // subtotal.value = []
        if (localStorage.getItem('cartItemsPen')===null){
            cartItemsPen.value = localStorage.setItem('cartItemsPen', '[]');
            // subtotal.value = 0
            // total.value = 0
        }else if(localStorage.getItem('cartItemsPen')==='[]'){
            // alert('masi kosong')
            cartItemsPen.value = localStorage.setItem('cartItemsPen', '[]')
            getTotal();
            subtotal.value = 0
            total.value = 0
            tax.value = 0
        }else{
            cartItemsPen.value = JSON.parse(localStorage.getItem('cartItemsPen'));
            getSubtotal();
            getTotal();
            
    // this.isicart = JSON.parse(localStorage.getItem('cartItemsP')).length;
        }

    }

    function getCartJasa() {
        // subtotal.value = []
        if (localStorage.getItem('cartItemsPenJasa')===null){
            cartItemsPenJasa.value = localStorage.setItem('cartItemsPenJasa', '[]');
            // subtotal.value = 0
            // total.value = 0
        }else if(localStorage.getItem('cartItemsPenJasa')==='[]'){
            // alert('masi kosong')
            cartItemsPenJasa.value = localStorage.setItem('cartItemsPenJasa', '[]');
            getTotal();
            subtotaljasa.value = 0
            total.value = 0
            tax.value = 0
        }else{
            cartItemsPenJasa.value = JSON.parse(localStorage.getItem('cartItemsPenJasa'));
            getSubtotal();
            getTotal();
            
    // this.isicart = JSON.parse(localStorage.getItem('cartItemsP')).length;
        }

    }

    const addPayment = () => {
        payment.value = localStorage.setItem('payment', '[]');
        // alert('add payment')
    };

    function getSubtotal(){
        const allItems = JSON.parse(localStorage.getItem('cartItemsPen')) || [];
        const allItemsJasa = JSON.parse(localStorage.getItem('cartItemsPenJasa')) || [];
        let sum = 0;
        let sumjasa = 0;
        subtotal.value = 0
        for(let i = 0; i < allItems.length; i++){
            sum += (parseFloat(allItems[i].total));
        }
        subtotal.value = sum;

        subtotaljasa.value = 0
        for(let i = 0; i < allItemsJasa.length; i++){
            sumjasa += (parseFloat(allItemsJasa[i].total));
        };
        subtotaljasa.value = sumjasa;
        // console.log(subtotal.value)
        // return sum;
    }
    function onlyNumber ($event) {
        //console.log($event.keyCode); //keyCodes value
        let keyCode = ($event.keyCode ? $event.keyCode : $event.which);
        if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) { // 46 is dot
            $event.preventDefault();
        }   
    }

</script>