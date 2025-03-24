<template>
    <!--  BEGIN SIDEBAR  -->
    <div class="sidebar-wrapper sidebar-theme">
        <nav ref="menu" id="sidebar">
            <div class="shadow-bottom"></div>

            <perfect-scrollbar class="list-unstyled menu-categories" tag="ul" :options="{ wheelSpeed: 0.5, swipeEasing: !0, minScrollbarLength: 40, maxScrollbarLength: 300, suppressScrollX: true }">
                <li class="menu">
                    <div class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#dashboard" aria-controls="dashboard" aria-expanded="false">
                        <router-link to="/index2" >
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
                                class="feather feather-home"
                            >
                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                            </svg>
                            <span>DASHBOARD</span>
                            <!-- {{ $t('dashboard') }}</span> -->
                        </router-link>
                    </div>
                </li>

                

                <li class="menu">
                    <div class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#components" aria-controls="components" aria-expanded="false">
                        <router-link to="/barang">
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
                                class="feather feather-box"
                            >
                                <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                                <polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
                                <line x1="12" y1="22.08" x2="12" y2="12"></line>
                            </svg>
                            <span>BARANG</span>
                        </router-link>
                            <!-- <span>{{ $t('Barang') }}</span> -->
                    </div>
                </li>

                <li class="menu">
                    <div class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#components" aria-controls="components" aria-expanded="false">
                        <router-link to="/jasa">
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
                                class="feather feather-box"
                            >
                                <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                                <polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
                                <line x1="12" y1="22.08" x2="12" y2="12"></line>
                            </svg>
                            <span>JASA</span>
                        </router-link>
                            <!-- <span>{{ $t('Barang') }}</span> -->
                    </div>
                </li>

                <li class="menu">
                    <a class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#datatables" aria-controls="datatables" aria-expanded="false">
                        <div class="">
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
                                class="feather feather-layers"
                            >
                                <polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
                                <polyline points="2 17 12 22 22 17"></polyline>
                                <polyline points="2 12 12 17 22 12"></polyline>
                            </svg>
                           <span>MASTER</span> 
                            <!-- {{ $t('Master') }}</span> -->
                        </div>
                        <div>
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
                                class="feather feather-chevron-right"
                            >
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg>
                        </div>
                    </a>

                    <ul id="datatables" class="collapse submenu list-unstyled" data-bs-parent="#sidebar">
                        <li>
                            <router-link to="/pegawai" @click="toggleMobileMenu">PEGAWAI</router-link>
                        </li>
                        <li>
                            <router-link to="/supplier" @click="toggleMobileMenu">SUPPLIER</router-link>
                        </li>
                        <li>
                            <router-link to="/pelanggan" @click="toggleMobileMenu">PELANGGAN</router-link>
                        </li>
                        <li>
                            <router-link to="/persediaan" @click="toggleMobileMenu">PERSEDIAAN</router-link>
                        </li>
                        <li>
                            <router-link to="/inventaris" @click="toggleMobileMenu">INVENTARIS</router-link>
                        </li>
                        <li>
                            <router-link to="/buku-besar" @click="toggleMobileMenu">BUKU KAS</router-link>
                        </li>
                        <li>
                            <router-link to="/coa/neraca" @click="toggleMobileMenu">NERACA</router-link>
                        </li>
                        <li class="menu">
                            <a class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#labarugi" aria-controls="labarugi" aria-expanded="false">
                                <div class="">
                                <span>LABA RUGI</span> 
                                    <!-- {{ $t('Master') }}</span> -->
                                </div>
                                <div>
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
                                        class="feather feather-chevron-right"
                                    >
                                        <polyline points="9 18 15 12 9 6"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul id="labarugi" class="collapse submenu list-unstyled" data-bs-parent="#datatables">
                                <li><router-link to="/coa/pendapatan" @click="toggleMobileMenu">PENDAPATAN</router-link></li>
                                <li><router-link to="/coa/biayaPenjualan" @click="toggleMobileMenu">BIAYA PENJUALAN</router-link></li>
                                <li><router-link to="/coa/biaya" @click="toggleMobileMenu">BIAYA</router-link></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="menu">
                    <a class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#apps" aria-controls="apps" aria-expanded="false">
                        <div class="">
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
                                class="feather feather-cpu"
                            >
                                <rect x="4" y="4" width="16" height="16" rx="2" ry="2"></rect>
                                <rect x="9" y="9" width="6" height="6"></rect>
                                <line x1="9" y1="1" x2="9" y2="4"></line>
                                <line x1="15" y1="1" x2="15" y2="4"></line>
                                <line x1="9" y1="20" x2="9" y2="23"></line>
                                <line x1="15" y1="20" x2="15" y2="23"></line>
                                <line x1="20" y1="9" x2="23" y2="9"></line>
                                <line x1="20" y1="14" x2="23" y2="14"></line>
                                <line x1="1" y1="9" x2="4" y2="9"></line>
                                <line x1="1" y1="14" x2="4" y2="14"></line>
                            </svg>
                            <span>TRANSAKSI</span>
                        </div>
                        <div>
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
                                class="feather feather-chevron-right"
                            >
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg>
                        </div>
                    </a>
                    <ul id="apps" class="collapse submenu list-unstyled" data-bs-parent="#sidebar">
                        
                        <li>
                            <router-link to="/pembelian" @click="toggleMobileMenu">PEMBELIAN BARANG</router-link>
                        </li>
                        <li>
                            <router-link to="/pembelian-inventaris" @click="toggleMobileMenu">PEMBELIAN INVENTARIS</router-link>
                        </li>
                        <li>
                            <router-link to="/penjualan" @click="toggleMobileMenu">PENJUALAN BARANG</router-link>
                        </li>
                        <li class="menu">
                            <a class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#opnum" aria-controls="opnum" aria-expanded="false">
                                <div class="">
                                <span>OPNUM</span> 
                                    <!-- {{ $t('Master') }}</span> -->
                                </div>
                                <div>
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
                                        class="feather feather-chevron-right"
                                    >
                                        <polyline points="9 18 15 12 9 6"></polyline>
                                    </svg>
                                </div>
                            </a>
                            <ul id="opnum" class="collapse submenu list-unstyled" data-bs-parent="#apps">
                                <li><router-link to="/opnum-barang" @click="toggleMobileMenu">OPNUM BARANG</router-link></li>
                            </ul>
                        </li>
                        <li><router-link to="/biaya" @click="toggleMobileMenu">BIAYA</router-link></li>
                        <li><router-link to="/jurnal-umum" @click="toggleMobileMenu">JURNAL UMUM</router-link></li>
                    </ul>
                </li>

                <li class="menu">
                    <a class="dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#forms" aria-controls="forms" aria-expanded="false">
                        <div class="">
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
                                class="feather feather-clipboard"
                            >
                                <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path>
                                <rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect>
                            </svg>
                            <span>LAPORAN</span>
                        </div>
                        <div>
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
                                class="feather feather-chevron-right"
                            >
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg>
                        </div>
                    </a>

                    <ul id="forms" class="collapse submenu list-unstyled" data-bs-parent="#sidebar">
                        
                        <li>
                            <router-link to="/laporan/penjualan-barang" @click="toggleMobileMenu">LAP. PENJUALAN BARANG</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/pembelian-persediaan" @click="toggleMobileMenu">LAP. PEMBELIAN BARANG</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/opnum" @click="toggleMobileMenu">LAP. OPNUM</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/pembelian-inventaris" @click="toggleMobileMenu">LAP. PEMBELIAN INVENTARIS</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/penyusutan" @click="toggleMobileMenu">LAP. PENYUSUTAN</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/labarugi" @click="toggleMobileMenu">LAP. LABA RUGI</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/neraca" @click="toggleMobileMenu">NERACA KEUANGAN</router-link>
                        </li>
                        <li>
                            <router-link to="/laporan/ledger" @click="toggleMobileMenu">GENERAL LEDGER</router-link>
                        </li>
                        <li>
                            <router-link to="/auth/lockscreen-boxed" @click="toggleMobileMenu">LOCK</router-link>
                        </li>
                        
                    </ul>
                </li>

                
            </perfect-scrollbar>
        </nav>
    </div>
    <!--  END SIDEBAR  -->
</template>

<script setup>
    import { onMounted, ref } from 'vue';
    import { useStore } from 'vuex';
    const store = useStore();

    const menu_collapse = ref('dashboard');

    onMounted(() => {
        const selector = document.querySelector('#sidebar a[href="' + window.location.pathname + '"]');
        if (selector) {
            const ul = selector.closest('ul.collapse');
            if (ul) {
                let ele = ul.closest('li.menu').querySelectorAll('.dropdown-toggle');
                if (ele) {
                    ele = ele[0];
                    setTimeout(() => {
                        ele.click();
                    });
                }
            } else {
                selector.click();
            }
        }
    });

    const toggleMobileMenu = () => {
        if (window.innerWidth < 991) {
            store.commit('toggleSideBar', !store.state.is_show_sidebar);
        }
    };
</script>
