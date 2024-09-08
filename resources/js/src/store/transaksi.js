//store/modules/auth.js

import axios from 'axios';
const state = {
    pembelian: [],
    penjualan:[],
    linkacc: [],
    stokopnum: [],
    
    kupon: [],
    biaya: [],
    link: [],
    listpobbm: [],
    //==========Edit
    detailpenjualan: [],
    detailpembelian: [],
    editaplusan:[],
    editbiaya: []
  };
  
const getters = {
    StatePembelian: state => state.pembelian,
    StatePenjualan: state => state.penjualan,
    StateAcc: state => state.linkacc,
    SstokOpnum: state => state.stokopnum,
    Skupon: state => state.kupon,
    Sbiaya: state => state.biaya,
    Slink: state => state.link,
    SlistPobbm: state => state.listpobbm,
    //==========Edit
    SdetailPenjualan: state => state.detailpenjualan,
    SdetailPembelian: state => state.detailpembelian,
    SeditAplusan: state => state.editaplusan,
    SeditBiaya: state => state.editbiaya,
};

const actions = {

    async CreatePembelian({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/pembelian', detail)
            localStorage.setItem('cartItemsP', '[]')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Pembelian berhasil tersimpan',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error';
        }
        // await dispatch('GetPembelian')
    },
    async CreateBarangDatang({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/barang-datang', detail)
            localStorage.setItem('cartItemsP', '[]')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Barang berhasil tersimpan',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Gagal simpan barang',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },
    async CreatePo({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/po-bbm', detail)
            // localStorage.setItem('cartItemsP', '[]')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Pembelian berhasil tersimpan',
                padding: '2em',
            });
            return response
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error bro';
        }
        // await dispatch('GetPembelian')
    },
    async ListPo({commit}, detail) {
        let response
        try {
            response = await axios.post('/api/list/po-bbm', detail)
            commit('setListpobbm', response.data.data)
            
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Gagal Load PO',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },
    async CreatePenjualan({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/penjualan', detail)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Penjualan berhasil tersimpan',
                padding: '2em',
            });
            localStorage.setItem('cartItemsPen', '[]')
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async CreatePenjualanKupon({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/penjualan-kupon', detail)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Penjualan berhasil tersimpan',
                padding: '2em',
            });
            localStorage.setItem('cartKupon', '[]')
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async CreateOpnum({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/opnum', detail)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Opnum berhasil tersimpan',
                padding: '2em',
            });
            // localStorage.setItem('cartItemsPen', '[]')
            return response ; 
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async CreateBiaya({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/biaya', detail)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Biaya berhasil tersimpan',
                padding: '2em',
            });
            // localStorage.setItem('cartItemsPen', '[]')
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async GetdetailPo({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/detail/po-bbm', detail)
            // const toast = window.Swal.mixin({
            //     toast: true,
            //     position: 'top-center',
            //     showConfirmButton: false,
            //     timer: 3000,
            //     padding: '2em',
            // });
            // toast.fire({
            //     icon: 'success',
            //     title: 'Penjualan berhasil tersimpan',
            //     padding: '2em',
            // });
            localStorage.setItem('terimabarang', JSON.stringify(response.data.data))
            console.log(response.data.data)
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async insertJuurnalUmum({dispatch}, detail) {
        let response
        try {
            response = await axios.post('/api/store/jurnal-umum', detail)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Jurnal berhasil tersimpan',
                padding: '2em',
            });
            // console.log(response.data.data)
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    // async CreateEditPenjualan({commit}, item) {
    //     // await axios.post('/api/tambah/pelanggan', pel)
    //     await commit('setEditPenjualan', item)
    //     localStorage.setItem('headerEditPen', JSON.stringify([item]))
    // },

    async NewKupon({ commit }, data){
            commit('setKupon', data)
    },
    async NewBiaya({ commit }, b){
        commit('setBiaya', b)
    },
    async NewLink({ commit }, b){
        commit('setLink', b)
    },
    
    async GetPembelian({ commit }){
        let response
        try {
            response = await axios.get('/api/getpembelian')
            commit('setPembelian', response.data.data)
        } catch (ex) {
            // Handle error
            return
        }
    
    },
    async GetAcc({ commit }){
        let response
        try {
            response = await axios.get('/api/linkacc')
            commit('setAcc', response.data.data)
        } catch (ex) {
            // Handle error
            return
        }
    },

    async GetDetailPenjualan({ commit }, kdPenjualan){
        let response
        try {
            response = await axios.post('/api/getdetail-penjualan', kdPenjualan)
            commit('setDetailPenjualan', response.data.data)
            // var dataArr = response.data.data

            // const arr = [];
            // for (let i = 0; i < dataArr.length; i++) {
            //     // console.log({kdBarang : dataArr[i].r_kdBarang, nmBarang : dataArr[i].r_nmBarang,});
            //     arr.push ({
            //         'kdBarang' : dataArr[i].r_kdBarang,
            //         'nmBarang' : dataArr[i].r_nmBarang,
            //         'hrgJual' : dataArr[i].hrgJual,
            //         'qty' : dataArr[i].qty,
            //         'satuan' : dataArr[i].satuanJual,
            //         'total' : dataArr[i].totalJual
            //     })
            //   }
            // console.log(arr)

            // localStorage.setItem('cartItemsPen', JSON.stringify(arr))
        } catch (ex) {
            // Handle error
            return
        }
    },

    async GetDetailPembelian({ commit }, kdBeli){
        let response
        try {
            response = await axios.post('/api/getdetail-pembelian', kdBeli)
            commit('setDetailPembelian', response.data.data)
            // var dataArr = response.data.data

            // const arr = [];
            // for (let i = 0; i < dataArr.length; i++) {
            //     // console.log({kdBarang : dataArr[i].r_kdBarang, nmBarang : dataArr[i].r_nmBarang,});
            //     arr.push ({
            //         'kdBarang' : dataArr[i].r_kdBarang,
            //         'nmBarang' : dataArr[i].r_nmBarang,
            //         'hrgJual' : dataArr[i].hrgJual,
            //         'qty' : dataArr[i].qty,
            //         'satuan' : dataArr[i].satuanJual,
            //         'total' : dataArr[i].totalJual
            //     })
            //   }
            // console.log(arr)

            // localStorage.setItem('cartItemsPen', JSON.stringify(arr))
        } catch (ex) {
            // Handle error
            return
        }
    },

    async DeletePObbm({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/pobbm', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'PO berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            console.log(ex.response.data.message)
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: ex.response.data.message,
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error bro';
        }
        // await dispatch('GetPembelian')
    },
    async getDetailPObbm({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/detail/pobbm', kd)
            // console.log(response.data.data)
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'PO Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            return
        }
        // await dispatch('GetPembelian')
    },

    async DeletePembelian({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/pembelian', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Pembelian berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Biaya Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error bro';
        }
        // await dispatch('GetPembelian')
    },

    async DeleteBiaya({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/biaya', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Biaya berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Biaya Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async DeleteJurnalUmum({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/jurnal-umum', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Jurnal berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Jurnal Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async DeletePenyusutan({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/penyusutan', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Penyusutan berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Penyusutan Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async DeletePenjualan({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/penjualan', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Penjualan berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Penjualan Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },

    async DeleteOpnum({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/opnum', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Opnum berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Opnum Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },
    async DeleteBbmDatang({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/bbmdatang', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'BBm datang terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'BBM datang Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },
    async DeletePenjualanKupon({dispatch}, kd) {
        let response
        try {
            response = await axios.post('/api/delete/penjualan-kupon', kd)
            // console.log(response.data.data)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Penjualan Kupon berhasil terhapus',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
            // Handle error
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'Penjualan Kupon Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await dispatch('GetPembelian')
    },
    
//========edit
    async GetEditAplusan({ commit }, sort){
        let response
        try {
            response = await axios.post('/api/getedit-aplusam', sort)
            commit('setEditAplusan', response.data.data)
            commit('setKupon', data)
            commit('setBiaya', b)
            commit('setLink', b)
        } catch (ex) {
            // Handle error
            return
        }

    },

    async GetEditBiaya({ commit }, sort){
        let response
        try {
            response = await axios.post('/api/getedit-biaya', sort)
            commit('setEditBiaya', response.data.data)
        } catch (ex) {
            // Handle error
            return
        }

    },
    

};
const mutations = {
    setPembelian(state, beli){
        state.pembelian = beli
    },
    setAcc(state, acc){
        state.linkacc = acc
    },
    setKupon(state, data){
        state.kupon = data
    },
    setBiaya(state, b){
        state.biaya = b
    },
    setLink(state, l){
        state.link = l
    },
    setListpobbm(state, po){
        state.listpobbm = po
    },
    // DeleteBarang({dispatch}, id) {
    //     axios.delete(`hapus/barang/${id}`)
    //     dispatch('GetBarang')
    //     // await commit('setUser', detUser.data.user)
    // },
    //=============Edit
    setDetailPenjualan(state, editjual){
        state.detailpenjualan = editjual
    },
    setDetailPembelian(state, editbeli){
        state.detailpembelian = editbeli
    },
    setEditAplusan(state, edita){
        state.editaplusan = edita
    },
    setEditBiaya(state, b){
        state.editbiaya = b
    },

};

export default {
  state,
  getters,
  actions,
  mutations
};
