//store/modules/auth.js

import axios from 'axios';
const state = {
    jasa: [],
  };
  
const getters = {
    StateJasa: state => state.jasa,
};

const actions = {  
    async CreateJasa({dispatch}, post) {
        try{
            await axios.post('/api/store/jasa', post)
            await dispatch('GetBarang')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Jasa Simpan Barang',
                padding: '2em',
            });
        } catch (err){
            const toast =  window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em'
            });
            toast.fire({
                title: 'Error!',
                text: 'gagal disimpan',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });

        }
    }, 
    async GetJasa({ commit }){
        let response
        try {
            response = await axios.get('/api/jasa')
            commit('setJasa', response.data.data)
        } catch (ex) {
            // Handle error
            return
        }
    
    },
    
    async EditJasa({dispatch}, Brg) {
        await axios.post('/api/update/jasa', Brg)
        await dispatch('GetJasa')
        // await commit('setUser', detUser.data.user)
    },
    async DeleteJasa({dispatch}, id) {
        let response
        try {
            response = await axios.delete(`/api/hapus/jasa/${id}`)
            await dispatch('GetJasa')
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top-center',
                showConfirmButton: false,
                timer: 3000,
                padding: '2em',
            });
            toast.fire({
                icon: 'success',
                title: 'Jasa berhasil terhapus',
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
                text: 'Jasa Gagal Dihapus',
                icon: 'error',
                // confirmButtonText: 'Cool',
                padding: '2em'
            });
            throw 'error' ;
        }
    },

    

};
const mutations = {
    setJasa(state, jasa){
        state.jasa = jasa
    },
};

export default {
  state,
  getters,
  actions,
  mutations
};
