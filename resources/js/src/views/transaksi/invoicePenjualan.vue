<template>
    <div class="layout-px-spacing">
        <teleport to="#breadcrumb">
            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">
                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:;">Apps</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>Invoice Preview</span></li>
                            </ol>
                        </nav>
                    </div>
                </li>
            </ul>
        </teleport>

        <div class="row invoice layout-top-spacing layout-spacing apps-invoice">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="doc-container">
                    <div class="row">
                        <div class="col-xl-9">
                            <div class="invoice-container">
                                <div class="invoice-inbox">
                                    <div id="ct" class="">
                                        <div class="invoice-00001">
                                            <div class="content-section">


                                                <div class="inv--head-section inv--detail-section">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-12 me-auto">
                                                            <div class="d-flex">
                                                                <img class="company-logo" src="@/assets/images/wm.png" alt="company" />
                                                                <!-- <h3 class="in-heading align-self-center">Cork Inc.</h3> -->
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-6 text-sm-end">
                                                            <p class="inv-list-number"><span class="inv-title">Invoice : </span> <span class="inv-number">{{ noNota }}</span></p>
                                                        </div>

                                                        <div class="col-sm-6 align-self-center">
                                                            <p class="inv-street-addr">Jln Jepun Bali No.10X Lukluk Mengwi Badung - Bali</p>
                                                            <p class="inv-email-address">info@winmaxbali.id</p>
                                                            <p class="inv-email-address">+6281 8688 114</p>
                                                        </div>
                                                        <div class="col-sm-6 align-self-center mt-3 text-sm-end">
                                                            <p class="inv-created-date"><span class="inv-title">Invoice Date : </span> <span class="inv-date">{{ tglNota }}</span></p>
                                                            <p class="inv-created-date"><span class="inv-title">
                                                                Kepada : </span> <span class="inv-date">{{ nmPelanggan }}</span>
                                                                {{ alamatPelanggan }}
                                                            </p>
                                                            <!-- <p class="inv-due-date"><span class="inv-title">Alamat : </span> <span class="inv-date">Jln Kaswari no 77</span></p> -->
                                                        </div>
                                                    </div>
                                                </div>

                                                

                                                <div class="inv--product-table-section" v-if="items.length > 0">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th v-for="item in columns" :key="item.key" :class="[item.class]">
                                                                        {{ item.label }}
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr v-for="item in items" :key="item.id">
                                                                    <td>{{ item.kdBarang }}</td>
                                                                    <td>{{ item.nmBarang }}</td>
                                                                    <td class="text-end">{{ Number(item.hrgJual).toLocaleString() }}</td>
                                                                    <td class="text-end">{{ item.qty }}</td>
                                                                    <td class="text-end">{{ Number(item.disc).toLocaleString() }}</td>
                                                                    <td class="text-end">{{ Number(item.totalJual).toLocaleString() }}</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="inv--product-table-section" v-if="items_jasa.length > 0">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th v-for="item in columns_jasa" :key="item.key" :class="[item.class]">
                                                                        {{ item.label }}
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr v-for="item in items_jasa" :key="item.id">
                                                                    <td>{{ item.kdJasa }}</td>
                                                                    <td>
                                                                        {{ item.nmJasa }}
                                                                        <p class="inv-email-address">{{ item.noteJasa }}</p>
                                                                    </td>
                                                                    <td class="text-end">{{ Number(item.biayaJasa).toLocaleString() }}</td>
                                                                    <td class="text-end">{{ item.qtyJasa }}</td>
                                                                    <td class="text-end">{{ Number(item.totalJasa).toLocaleString() }}</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                

                                                <div class="inv--total-amounts">
                                                    <div class="row mt-4">
                                                        <div class="col-sm-5 col-12 order-sm-0 order-1">
                                                            <img :src="`https://api.qrserver.com/v1/create-qr-code/?size=50x50&data=${noNota}`" alt="QR Code" />
                                                            <p class="inv-email-address">Invoice ini sudah di ttd secara digital oleh WinMax Bali<br>Terima kasih</p>
                                                        </div>
                                                        <div class="col-sm-7 col-12 order-sm-1 order-0">
                                                           
                                                            <div class="text-sm-end">
                                                                <div class="row">
                                                                    <div class="col-sm-8 col-7">
                                                                        <p class="">Sub Total:</p>
                                                                    </div>
                                                                    <div class="col-sm-4 col-5">
                                                                        <p class="">{{ items.reduce((sum, item) => sum + Number(item.totalJual), 0).toLocaleString() }}</p>
                                                                    </div>
                                                                    
                                                                    <div class="col-sm-8 col-7">
                                                                        <p class="discount-rate">Sub Total Jasa</p>
                                                                    </div>
                                                                    <div class="col-sm-4 col-5">
                                                                        <p class="">{{ items_jasa.reduce((sum, item) => sum + Number(item.totalJasa), 0).toLocaleString() }}</p>
                                                                    </div>
                                                                    <div class="col-sm-8 col-7">
                                                                        <h5 class="">Grand Total :</h5>
                                                                    </div>
                                                                    <div class="col-sm-4 col-5">
                                                                        <h5 class="">{{ (Number( items.reduce((sum, item) => sum + Number(item.totalJual), 0) - Number(discPenjualan)) +  items_jasa.reduce((sum, item) => sum + Number(item.totalJasa), 0)).toLocaleString() }}</h5>
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

                        <div class="col-xl-3">
                            <div class="invoice-actions-btn">
                                <div class="invoice-action-btn">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-3 col-sm-6">
                                            <a href="javascript:;" class="btn btn-primary btn-send">Send Invoice</a>
                                        </div>
                                        <div class="col-xl-12 col-md-3 col-sm-6">
                                            <a href="javascript:;" class="btn btn-secondary btn-print action-print" @click="print()">Print</a>
                                        </div>
                                        <div class="col-xl-12 col-md-3 col-sm-6">
                                            <router-link to="/penjualan" class="btn btn-warning btn-back">Back</router-link>
                                        </div>
                                        <div class="col-xl-12 col-md-3 col-sm-6">

                                            <router-link to="/apps/invoice/edit" class="btn btn-dark btn-edit">Edit</router-link>
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
    import { onMounted, ref } from 'vue';
    import '@/assets/sass/apps/invoice-preview.scss';

    import { useMeta } from '@/composables/use-meta';
    useMeta({ title: 'Invoice' });

    import { useRouter, useRoute } from 'vue-router'
    import { useStore } from 'vuex';
    const route = useRoute();
    const store = useStore();
    const router = useRouter();

    const items = ref([]);
    const items_jasa = ref([]);
    const columns = ref([]);
    const columns_jasa = ref([]);
    const nmPelanggan = ref('');
    const alamatPelanggan = ref('');
    const noNota = ref('');
    const tglNota = ref('');
    const discPenjualan = ref(0);



    onMounted(() => {
        bind_data();
        getInvoiceDetails();
    });

    const bind_data = () => {
        columns.value = [
            { key: 'kdBarang', label: 'CODE' },
            { key: 'nmBarang', label: 'ITEMS' },
            { key: 'hrgJual', label: 'HARGA' },
            { key: 'qty', label: 'QTY', class: 'text-end' },
            { key: 'disc', label: 'Disc', class: 'text-end' },
            { key: 'totalJual', label: 'AMOUNT', class: 'text-end' },
        ];
        columns_jasa.value = [
            { key: 'kdJasa', label: 'CODE' },
            { key: 'nmJasa', label: 'ITEMS' },
            { key: 'biayaJasa', label: 'HARGA' },
            { key: 'qtyjasa', label: 'QTY', class: 'text-end' },
            { key: 'totalJasa', label: 'AMOUNT', class: 'text-end' },
        ];
        // items.value = [
        //     { id: 1, title: 'Calendar App Customization', quantity: 1, price: '120', amount: '120' },
        //     { id: 2, title: 'Chat App Customization', quantity: 1, price: '230', amount: '230' },
        //     { id: 3, title: 'Laravel Integration', quantity: 1, price: '405', amount: '405' },
        //     { id: 4, title: 'Backend UI Design', quantity: 1, price: '2500', amount: '2500' },
        // ];
    };

    const print = () => {
        window.print();
    };
    
    const invoiceId = ref(route.params.id);

    const getInvoiceDetails = async () => {
        try {
            // const response = await axios.get(`/api/invoices/${invoiceId.value}`);
            // const invoiceDetails = response.data;
            // items.value = invoiceDetails.items;
            await store.dispatch('GetDetailPenjualan', {noNota: invoiceId.value})
            .then((response) => {
                items.value = store.getters.SdetailPenjualan[1];
                items_jasa.value = store.getters.SdetailPenjualan[2];
                nmPelanggan.value = store.getters.SdetailPenjualan[0][0].nmPelanggan;
                alamatPelanggan.value = store.getters.SdetailPenjualan[0][0].almtPelanggan;
                noNota.value = store.getters.SdetailPenjualan[0][0].noPenjualan;
                tglNota.value = store.getters.SdetailPenjualan[0][0].tglPenjualan;
                discPenjualan.value = store.getters.SdetailPenjualan[0][0].discPenjualan;
            // console.log(nmPelanggan.value);
                console.log(response);
            }).catch((error) => {
                console.log(error);
                router.push({ name: 'penjualan-barang'});
            });

        } catch (error) {
            console.error('Error fetching invoice details:', error);
        }
    };

</script>
