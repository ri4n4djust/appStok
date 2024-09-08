//store/modules/auth.js

import axios from 'axios';
const state = {
    transnosel: null,
    transnoselregu: null
  };
  
const getters = {
    STransNosel: state => state.transnosel,
    STransNoselRegu: state => state.transnoselregu,
    
};

const actions = {  
    async CreateTransNosel({commit, dispatch}, transnosel) {
        let response
        try {
            response = await axios.post('/api/store/transnosel', transnosel)
        // commit('setTransNosel', response.data.data)
        // await dispatch('GetTransNosel', payload)
            
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Transaksi berhasil tersimpan',
                padding: '2em',
            });
            return response ;
        } catch (error) {
            // console.log(error.response.data.message)
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: error.response.data.message, // 'Mohon Lengkapi Data',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error bro';
        }
    }, 
    async UpdateMeterNosel({commit, dispatch}, updatemeter) {
        let response
        try {
            response = await axios.post('/api/update/nosel-meter', updatemeter)
        // commit('setTransNosel', response.data.data)
        // await dispatch('GetTransNosel', payload)
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Perubahan berhasil tersimpan',
                padding: '2em',
            });
            return response ;
        } catch (ex) {
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
    }, 
    async GetTransNosel({ commit }, payload){
        let response = await axios.post('/api/transnosel', payload)
        commit('setTransNosel', response.data.data)
        
    },
    async GetTransNoselRegu({ commit }){
        let response = await axios.post('/api/transnoselregu')
        commit('setTransNoselRegu', response.data.data)
        
    },
    async EditTransNosel({dispatch}, nosel) {
        await axios.post('/api/update/transnosel', nosel)
        await dispatch('GetTransNosel')
        // await commit('setUser', detUser.data.user)
    },
    async DeleteAplusan({dispatch}, id) {
        let response
        try {
            response = await axios.post('/api/hapus/aplusan/', id)
            await dispatch('GetTransNosel')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Aplusan berhasil tersimpan',
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
                text: 'Aplusan Gagal di hapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
        // await commit('setUser', detUser.data.user)
    },
    

};
const mutations = {
    setTransNosel(state, transnosel){
        state.transnosel = transnosel
        // console.log(state.transnosel)
    },
    setTransNoselRegu(state, transnoselregu){
        state.transnoselregu = transnoselregu
        // console.log(state.transnosel)
    },
    // GetTransNosel(state, transnosel){
    //     state.transnosel = transnosel
    // },
    // DeleteBarang({dispatch}, id) {
    //     axios.delete(`hapus/barang/${id}`)
    //     dispatch('GetBarang')
    //     // await commit('setUser', detUser.data.user)
    // },

};

export default {
  state,
  getters,
  actions,
  mutations
};
