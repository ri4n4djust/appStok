<template>
    <div class="layout-px-spacing">
        <teleport to="#breadcrumb">
            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">
                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:;">DataTables</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>HTML5 Export</span></li>
                            </ol>
                        </nav>
                    </div>
                </li>
            </ul>
        </teleport>

        

        <div class="row layout-top-spacing">
            <div class="col-12 layout-spacing">
                <div class="panel br-6">
                    <div class="custom-table panel-body p-0">

                        <div class="d-flex flex-wrap justify-content-center justify-content-sm-start px-3 pt-3 pb-0">
                            <!-- <button variant="primary" class="btn m-1 btn-primary" @click="export_table('print')">Print</button> -->
                            <!-- <button variant="primary" class="btn m-1 btn-primary" @click="export_table('pdf')">PDF</button> -->
                            <h5>Daftar Penjualan</h5>
<span>{{ bbm }}</span>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="input-group mb-4">
                                        <flat-pickr v-model="sorting.startDate"
                                        :config="{dateFormat: 'd-m-Y'}" 
                                            class="form-control form-control-sm">
                                        </flat-pickr>
                                        <flat-pickr v-model="sorting.endDate"
                                        :config="{dateFormat: 'd-m-Y'}" 
                                            class="form-control form-control-sm">
                                        </flat-pickr>
                                        <button variant="primary" class="btn m-1 btn-primary" @click="bind_data()" >CARI</button>
                                        <button variant="primary" class="btn m-1 btn-primary" @click="export_table('print')">Print</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <v-client-table :data="items" :columns="columns" :options="table_option">
                            <template #tglPenjualan="props"> {{ moment(props.row.tglPenjualan).format("DD-MM-YYYY") }} </template>
                            <template #subTotalPenjualan="props"> {{ Number(props.row.subTotalPenjualan).toLocaleString() }} </template>
                            <template #totalPenjualan="props"> {{ Number(props.row.totalPenjualan).toLocaleString() }} </template>
                            <template #taxPenjualan="props"> {{ Number(props.row.taxPenjualan).toLocaleString() }} </template>
                            <template #action="props">
                                <router-link :to="{name: 'invoice-penjualan', params: {id: props.row.noPenjualan}}">
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="24"
                                        height="24"
                                        viewBox="0 0 24 24"
                                        fill="none"
                                        stroke="currentColor"
                                        stroke-width="2"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        class="feather feather-eye"
                                    >
                                        <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                        <circle cx="12" cy="12" r="3"></circle>
                                    </svg>
                                </router-link>
                                <router-link :to="{name: 'editpenjualan', params: {startDate: props.row.tglPenjualan, kd_trans:props.row.noPenjualan, regu:props.row.r_regu }}" >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="24"
                                        height="24"
                                        viewBox="0 0 24 24"
                                        fill="none"
                                        stroke="currentColor"
                                        stroke-width="2"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        class="feather feather-edit-2"
                                    >
                                        <path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path>
                                    </svg>
                                </router-link>
                                <a href="javascript:void(0);" @click="delete_row(props.row)" >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="24"
                                        height="24"
                                        viewBox="0 0 24 24"
                                        fill="none"
                                        stroke="currentColor"
                                        stroke-width="2"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        class="feather feather-trash-2"
                                    >
                                        <polyline points="3 6 5 6 21 6"></polyline>
                                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                        <line x1="10" y1="11" x2="10" y2="17"></line>
                                        <line x1="14" y1="11" x2="14" y2="17"></line>
                                    </svg>
                                </a>

                                <!-- <div class="custom-dropdown dropdown btn-group ">
                                    <div class="btn-group" href="#" role="button" id="pendingTask" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <div role="group" class="btn-group">
                                            <div class="dropdown b-dropdown custom-dropdown show btn-group">
                                                <a class="btn dropdown-toggle btn-dark"
                                                    ><svg
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        width="24"
                                                        height="24"
                                                        viewBox="0 0 24 24"
                                                        fill="none"
                                                        stroke="currentColor"
                                                        stroke-width="2"
                                                        stroke-linecap="round"
                                                        stroke-linejoin="round"
                                                        class="feather feather-chevron-down"
                                                    >
                                                        <polyline points="6 9 12 15 18 9"></polyline>
                                                    </svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <router-link to="/editpenjualan" class="dropdown-item" @click="edit_row(props.row)">Edit</router-link>
                                        </li>
                                        <li>
                                            <router-link :to="{ name: 'nosel', params: { id: 'hgjhg'} }" class="dropdown-item">coba</router-link>
                                        </li>
                                    </ul>
                                </div> -->

                            </template>
                        </v-client-table>

                        
                        
                    </div>
                </div>
            </div>
        </div>


        <!--  -->
        
    </div>
</template>

<script setup>
    import { computed, onMounted, ref, onBeforeMount } from 'vue';

    //pdf export
    import jsPDF from 'jspdf';
    import 'jspdf-autotable';

    import flatPickr from 'vue-flatpickr-component';
    import 'flatpickr/dist/flatpickr.css';
    import '@/assets/sass/forms/custom-flatpickr.css';

    import { useStore } from 'vuex';
    import { useRouter, useRoute } from 'vue-router'

    import moment from "moment";

    import { useMeta } from '@/composables/use-meta';
    useMeta({ title: 'Data Laporan Penjualan' });

    const store = useStore();
    const router = useRouter()

    const columns = ref(['noPenjualan', 'tglPenjualan', 'nmPelanggan', 'subTotalPenjualan', 'totalPenjualan', 'action']);
    const items = ref([]);
    const table_option = ref({
        perPage: 10,
        perPageValues: [5, 10, 20, 50],
        skin: 'table table-hover',
        columnsClasses: { action: 'actions text-center' },
        pagination: { nav: 'scroll', chunk: 5 },
        texts: {
            count: 'Showing {from} to {to} of {count}',
            filter: '',
            filterPlaceholder: 'Search...',
            limit: 'Results:',
        },
        sortable: ['noPenjualan', 'tglPenjualan', 'nmPelanggan', 'subTotalPenjualan', 'discPenjualan',],
        sortIcon: {
            base: 'sort-icon-none',
            up: 'sort-icon-asc',
            down: 'sort-icon-desc',
        },
        resizableColumns: true,
    });
    const sorting = ref({
        startDate: moment().subtract(30,'d').format("D-M-YYYY"),
        endDate: moment().format("D-M-YYYY")
    });

    

    onMounted(() => {
        bind_data();
        console.log('on mount pagr')
    });
    onBeforeMount(() => {
        console.log(' before onmount')
        
    })

    
    const bind_data = () => {
        store.dispatch('GetLaporanBarang', sorting.value);
        // items.value = store.getters.SlaporanBbm;
    }

    const bbm = computed(() => {
        items.value = store.getters.SlaporanBarang;

        let sum = 0;
        items.value.forEach(element => {
        sum +=  parseInt(element.total);
        });

        

        // console.log(sum)
        // return { items }
    });

    const export_table = (type) => {
        let cols = columns.value.filter((d) => d != 'profile' && d != 'action');
        let records = items.value;
        let filename = 'table';

        if (type == 'csv') {
            let coldelimiter = ',';
            let linedelimiter = '\n';
            let result = cols
                .map((d) => {
                    return capitalize(d);
                })
                .join(coldelimiter);
            result += linedelimiter;
            records.map((item) => {
                cols.map((d, index) => {
                    if (index > 0) {
                        result += coldelimiter;
                    }
                    let val = item[d] ? item[d] : '';
                    result += val;
                });
                result += linedelimiter;
            });

            if (result == null) return;
            if (!result.match(/^data:text\/csv/i) && !window.navigator.msSaveOrOpenBlob) {
                var data = 'data:application/csv;charset=utf-8,' + encodeURIComponent(result);
                var link = document.createElement('a');
                link.setAttribute('href', data);
                link.setAttribute('download', filename + '.csv');
                link.click();
            } else {
                var blob = new Blob([result]);
                if (window.navigator.msSaveOrOpenBlob) {
                    window.navigator.msSaveBlob(blob, filename + '.csv');
                }
            }
        } else if (type == 'print') {
            var rowhtml = '<p>' + filename + '</p>';
            rowhtml +=
                '<table style="width: 100%; " cellpadding="0" cellcpacing="0"><thead><tr style="color: #515365; background: #eff5ff; -webkit-print-color-adjust: exact; print-color-adjust: exact; "> ';
            cols.map((d) => {
                rowhtml += '<th>' + capitalize(d) + '</th>';
            });
            rowhtml += '</tr></thead>';
            rowhtml += '<tbody>';
            records.map((item) => {
                rowhtml += '<tr>';
                rowhtml += '<td>'+item.noPenjualan+'</td>';
                rowhtml += '<td>'+moment(item.tglPenjualan).format("DD-MM-YYYY")+'</td>';
                rowhtml += '<td>'+item.nmPelanggan+'</td>';
                rowhtml += '<td>'+Number(item.subTotalPenjualan).toLocaleString()+'</td>';
                rowhtml += '<td>'+Number(item.totalPenjualan).toLocaleString()+'</td>';
                rowhtml += '</tr>';
                // cols.map((d) => {
                //     let val = item[d] ? item[d] : '';
                //     rowhtml += '<td>' + val + '</td>';
                // });
                rowhtml += '</tr>';
            });
            // tot =+val[d];
            let sum = 0;
            let sumtax = 0;
            records.forEach(element => {
            sum +=  parseInt(element.totalPenjualan);
            sumtax +=  parseInt(element.taxPenjualan);
            });

            // console.log(sum)

            rowhtml +=
                '<style>body {font-family:Arial; color:#495057;}p{text-align:center;font-size:18px;font-weight:bold;margin:15px;}table{ border-collapse: collapse; border-spacing: 0; }th,td{font-size:12px;text-align:left;padding: 4px;}th{padding:8px 4px;}tr:nth-child(2n-1){background:#f7f7f7; }</style>';
            rowhtml += '</tbody>';
            rowhtml += '<tfoot><tr>'

            rowhtml += '<tr><th></th><th></th><th></th><th>Total</th><th></th><th>'+Number(sum).toLocaleString()+'</th></tr>'
            // rowhtml += '<tr><th></th><th></th><th></th><th></th><th>Total Net</th><th></th><th>'+Number(sum - sumtax).toLocaleString()+'</th>'
            rowhtml += '</tr></tfoot></table>'
            var winPrint = window.open('', '', 'left=0,top=0,width=1000,height=600,toolbar=0,scrollbars=0,status=0');
            winPrint.document.write('<title>Print</title>' + rowhtml);
            winPrint.document.close();
            winPrint.focus();
            winPrint.print();
            // winPrint.close();
        } else if (type == 'pdf') {
            cols = cols.map((d) => {
                return { header: capitalize(d), dataKey: d };
            });
            const doc = new jsPDF('l', 'pt', cols.length > 10 ? 'a3' : 'a4');
            doc.autoTable({
                headStyles: { fillColor: '#eff5ff', textColor: '#515365' },
                columns: cols,
                body: records,
                styles: { overflow: 'linebreak' },
                pageBreak: 'auto',
                margin: { top: 45 },
                didDrawPage: () => {
                    doc.text('Export Table', cols.length > 10 ? 535 : 365, 30);
                },
            });
            doc.save(filename + '.pdf');
        }
    };

    const excel_columns = () => {
        return {
            Name: 'name',
            Position: 'position',
            Office: 'office',
            Age: 'age',
            'Start Date': 'start_date',
            Salary: 'salary',
        };
    };
    const excel_items = () => {
        return items.value;
    };
    const capitalize = (text) => {
        return text
            .replace('_', ' ')
            .replace('-', ' ')
            .toLowerCase()
            .split(' ')
            .map((s) => s.charAt(0).toUpperCase() + s.substring(1))
            .join(' ');
    };
    const edit_row = (item) => {
        store.dispatch('GetDetailPenjualan', {kd : item.noPenjualan})
        store.dispatch('CreateEditPenjualan', item);
        // router.push({ path: '/editpenjualan' })
        // alert('ID: '+ item.noPenjualan);
    };
    const delete_row = (data) => {
        new window.Swal({
            title: 'Anda Yakin?',
            text: "Hapus Penjualan !" +data.noPenjualan,
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Delete',
            padding: '2em'
        }).then(result => {
            if (result.value) {
                store.dispatch('DeletePenjualan', { id:data.noPenjualan})
                .then(response => {
                    bind_data();
                    new window.Swal('Deleted!', 'Your file has been deleted.', 'success');
                }).catch(error => {
                    // console.log('error: ', error)
                    return
                })
            }
        });
    }
</script>
