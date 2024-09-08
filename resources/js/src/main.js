import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
const app = createApp(App);

// bootstrap
import * as bootstrap from 'bootstrap';
window.bootstrap = bootstrap;

// modals
import '@/assets/sass/components/custom-modal.scss';

// perfect scrollbar
import PerfectScrollbar from 'vue3-perfect-scrollbar';
import 'vue3-perfect-scrollbar/dist/vue3-perfect-scrollbar.css';

//vue-meta
import { createHead } from '@vueuse/head';
const head = createHead();

//Sweetalert
import Swal from 'sweetalert2';
window.Swal = Swal;

// nouislider - later remove and add to page due to not working in page
import VueNouislider from 'vue3-nouislider';
import 'vue3-nouislider/dist/vue3-nouislider.css';

// vue input mask
import Maska from 'maska';

// smooth scroll
import { registerScrollSpy } from 'vue3-scroll-spy/dist/index';
registerScrollSpy(app, { offset: 118 });

//vue-i18n
import i18n from './i18n';

// datatables
import { ClientTable } from 'v-tables-3';

// json to excel
import vue3JsonExcel from 'vue3-json-excel';

//vue-wizard
import VueFormWizard from 'vue3-form-wizard';
import 'vue3-form-wizard/dist/style.css';

// set default settings
import appSetting from './app-setting';
window.$appSetting = appSetting;
window.$appSetting.init();


import { vfmPlugin } from 'vue-final-modal';

// import Vue3EasyDataTable from 'vue3-easy-data-table';
// import 'vue3-easy-data-table/dist/style.css';

let AUTH_TOKEN = localStorage.getItem('tokenLogin') ;
// Axio
import axios from 'axios';
// axios.defaults.baseURL = 'http://localhost:8000/';
// axios.defaults.headers.common['Authorization'] = 'Bearer'+AUTH_TOKEN;
axios.defaults.headers.common['Authorization'] = `Bearer ${AUTH_TOKEN}` 
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

app.use(vfmPlugin).use(store).use(router).use(i18n).use(PerfectScrollbar).use(VueNouislider).use(Maska).use(ClientTable).use(vue3JsonExcel).use(VueFormWizard).use(head).mount('#app');
