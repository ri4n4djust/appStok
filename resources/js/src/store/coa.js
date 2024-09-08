//store/modules/auth.js

import axios from 'axios';
const state = {
    coalist: [],
    harta: [],
    pendapatan: []
  };
  
const getters = {
    StateHarta: state => state.harta,
    StateCoaList: state => state.coalist,
    StateListCoa: state => state.listcoa,
    StateCoaPendapatan: state => state.pendapatan,
};

const actions = {  
    async CreateAcc({dispatch}, post) {
        let res
        try {
            res = await axios.post('/api/store/coa-acc', post)
            // await dispatch('GetHarta')
            return res ;
        } catch (ex) {
            // Handle error
            return res ;
        }
    }, 
    async GetHarta({ commit }, group){
        let response = await axios.post('/api/get/acc-data', group)
        commit('setHarta', response.data.data)
    },
    async GetPendapatan({ commit }, group){
        let response = await axios.post('/api/get/acc-data', group)
        commit('setPendapatan', response.data.data)
    },
    async GetCoaList({ commit }, list){
        let response = await axios.post('/api/get/coa', list)
        commit('setCoa', response.data.data)
    },
    async GetListCoa({ commit } ){
        let response = await axios.get('/api/get-acc-list')
        commit('setListCoa', response.data.data)
    },
    

};
const mutations = {
    setHarta(state, harta){
        state.harta = harta
    },
    setPendapatan(state, pendapatan){
        state.pendapatan = pendapatan
    },
    setCoa(state, coa){
        state.coalist = coa
    },
    setListCoa(state, coa){
        state.listcoa = coa
    },
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
