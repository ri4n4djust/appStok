<template>
    <div class="layout-px-spacing">
        <teleport to="#breadcrumb">
            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">
                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:;">Daftar</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>Jasa</span></li>
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
                            <button class="btn btn-primary mb-2 me-2" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">Tambah</button>
                            <button class="btn btn-primary mb-2 me-2" @click="export_table('print')">Print</button>
                            <button class="btn btn-primary mb-2 me-2" @click="export_table('pdf')">PDF</button>
                            <span>{{ jasas }}</span>
                        </div>

                        <v-client-table :data="items" :columns="columns" :options="table_option">
                            <template #biayaJasa="props"> {{ Number(props.row.biayaJasa).toLocaleString() }} </template>
                            
                            <template #action="props">

                                <a href="javascript:void(0);" @click="view_row(props.row)" >
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
                                </a>
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
                            </template>
                        </v-client-table>

                        
                        
                    </div>
                </div>
            </div>

            <Modal 
                v-model:visible="isVisible" 
                :draggable="true" 
                :title="'Edit Data Jasa'"
                :showCancelButton="false" 
                :cancelButton="{text: 'cancel', onclick: () => {isVisible = false}, loading: false}"
                :okButton="{text: 'SAVE', onclick: () => {edit_jasa()}, loading: false}"
                width="60%">
                <div class="row mb-4">
                    <div class="col-sm-4">
                        <label for="inputState">Kode</label>
                        <input v-model="edit.kdJasa" class="form-control" placeholder="Kode" disabled />
                    </div>
                    <div class="col-sm">
                        <label for="inputState">Nama</label>
                        <input v-model="edit.nmJasa" class="form-control" placeholder="Nama Barang" />
                    </div>
                    <div class="col-sm">
                        <label for="inputState">Biaya</label>
                        <input v-model="edit.biayaJasa" class="form-control" placeholder="Satuan" @keypress="onlyNumber" />
                    </div>
                    
                </div>
                <div class="row mb-8">
                    <div class="col-sm">
                        <label for="inputState">Des</label>
                        <input v-model="edit.deskripsi" class="form-control" placeholder="Des"  />
                    </div>                    
                </div>
                <div class="row mb-4">
                    <div class="col-sm">
                        <label for="inputState">Akun Kas</label>
                        <select id="inputState" v-model="edit.accid" class="form-select">
                            <option  v-for="ac in accs" :value="ac.acc_id" :key="ac.acc_id">{{ ac.name }}</option>
                        </select>
                    </div>
                    <div class="col-sm">
                        <label for="inputState">Akun Jasa</label>
                        <select id="inputState" v-model="edit.accid_jasa" class="form-select">
                            <option :value="ac.acc_id" v-for="ac in accs" :key="ac.acc_id">{{ ac.name }}</option>
                        </select>
                    </div>
                </div>
            </Modal>

            <!-- <div v-show="modalinput" > -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah Data Jasa</h5>
                                <button type="button" data-dismiss="modal" data-bs-dismiss="modal" aria-label="Close" class="btn-close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row mb-4">
                                        <div class="col-sm">
                                            <label for="inputState">Kode</label>
                                            <input v-model="input.kdJasa" class="form-control" placeholder="Kode" disabled />
                                        </div>
                                        <div class="col-sm">
                                            <label for="inputState">Nama</label>
                                            <input v-model="input.nmJasa" class="form-control" placeholder="Nama Barang" />
                                        </div>
                                        <div class="col-sm">
                                            <label for="inputState">Biaya</label>
                                            <input v-model="input.biayaJasa" class="form-control" placeholder="Biaya" @keypress="onlyNumber" />
                                        </div>
                                        
                                    </div>
                                    <div class="row mb-4">
                                        <div class="col-sm">
                                            <label for="inputState">Deskripsi</label>
                                            <input v-model="input.deskripsi" class="form-control" placeholder="Des"  />
                                        </div>
                                        
                                    </div>

                                    <div class="row mb-4">
                                        <div class="col-sm">
                                            <label for="inputState">Akun Kas</label>
                                            <select id="inputState" v-model="input.accid" class="form-select">
                                                <option :value="ac.acc_id" v-for="ac in accs" :key="ac.acc_id" selected>{{ ac.name }}</option>
                                            </select>
                                        </div>
                                        <div class="col-sm">
                                            <label for="inputState">Akun Jasa</label>
                                            <select id="inputState" v-model="input.accid_jasa" class="form-select">
                                                <option :value="ac.acc_id" v-for="ac in accs" :key="ac.acc_id" selected>{{ ac.name }}</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn" data-dismiss="modal" data-bs-dismiss="modal"><i class="flaticon-cancel-12"></i> Discard</button>
                                <button type="button" class="btn btn-primary" @click="simpan_jasa">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- </div> -->


        </div>
        <!--  -->
    
    </div>
</template>

<script setup>
    import { computed, onMounted, ref } from 'vue';

    //pdf export
    import jsPDF from 'jspdf';
    import 'jspdf-autotable';

    import moment from "moment";
    import { Modal } from 'usemodal-vue3';
    import { useStore } from 'vuex';

    import { useMeta } from '@/composables/use-meta';
    useMeta({ title: 'Data Jasa' });

    const store = useStore();
    

    const columns = ref(['kdJasa', 'nmJasa', 'biayaJasa' ,'action']);

    const modalinput = ref(false);
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
        sortable: ['kdJasa', 'nmJasa'],
        sortIcon: {
            base: 'sort-icon-none',
            up: 'sort-icon-asc',
            down: 'sort-icon-desc',
        },
        resizableColumns: true,
    });

    const isVisible = ref(false);
    const edit = ref({});

    
    const kdJasa = ref([])
    const input = ref({
        kdJasa: kdJasa,
        nmJasa: '',
        biayaJasa: '',
        deskripsi: '',
        accid: accs,
        accid_biaya: accs,
    })


    

    onMounted(() => {
        bind_data();
        GetCoaHpp();
        getkd();
        // setTimeout(function() { accs.value = store.getters.StateCoaList; }, 1000);
    });

    
    const bind_data = () => {
        store.dispatch('GetJasa');
        items.value = store.getters.StateJasa;
    }

    const jasas = computed(() => {
        items.value = store.getters.StateJasa;
        kdJasa.value = store.getters.NoJasa;
        // console.log(items)
        // return { kdbrg }
    });

    // input.value = computed(() => {
    //     kdbrg.value = store.getters.NoBarang;
    // })
    const accs = ref([]);
    const GetCoaHpp= async() => {
        await store.dispatch('GetCoaList')
        accs.value = store.getters.StateCoaList;
    }

    // const kdbrg = ref([])
    const getkd = async () => {
        await store.dispatch('GetNoJasa');
        kdJasa.value = store.getters.NoJasa;
        console.log(kdJasa.value)
    }

    const simpan_jasa = () => {
        const isi = input.value
        store.dispatch('CreateJasa', isi )
        bind_data();
        getkd()
    }
    const edit_jasa = () => {
        const isi = edit.value
        store.dispatch('CreateJasa', isi )
        bind_data();
        getkd()
    }

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
                cols.map((d) => {
                    let val = item[d] ? item[d] : '';
                    rowhtml += '<td>' + val + '</td>';
                });
                rowhtml += '</tr>';
            });
            rowhtml +=
                '<style>body {font-family:Arial; color:#495057;}p{text-align:center;font-size:18px;font-weight:bold;margin:15px;}table{ border-collapse: collapse; border-spacing: 0; }th,td{font-size:12px;text-align:left;padding: 4px;}th{padding:8px 4px;}tr:nth-child(2n-1){background:#f7f7f7; }</style>';
            rowhtml += '</tbody></table>';
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
    const view_row = (item) => {
        modalinput.value = true
        isVisible.value = true;
        edit.value = ({
            kdJasa: item.kdJasa,
            nmJasa: item.nmJasa,
            biayaJasa: item.biayaJasa,
            deskripsi: item.deskripsi,
            accid: item.accid,
            accid_jasa: item.accid_jasa,
        });
        console.log(item);
        // alert('ID: ' + item.kdBarang + ', Name: ' + item.nmBarang);
    };

    const delete_row = (item) => {
        modalinput.value = true
        // alert('ID: ' + item.kdBarang + ', Name: ' + item.nmBarang);
        new window.Swal({
            title: 'Anda Yahin?',
            text: "Hapus Nama Barang !" +item.nmJasa,
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Delete',
            padding: '2em'
        }).then(result => {
            if (result.value) {
                store.dispatch('DeleteJasa', item.id)
                .then(response => {
                    bind_data();
                    new window.Swal('Deleted!', 'Your file has been deleted.', 'success');
                }).catch(error => {
                    // console.log('error: ', error)
                    return
                })

            }
        });
    };

    function onlyNumber ($event) {
        //console.log($event.keyCode); //keyCodes value
        let keyCode = ($event.keyCode ? $event.keyCode : $event.which);
        if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) { // 46 is dot
            $event.preventDefault();
        }   
    }
</script>
