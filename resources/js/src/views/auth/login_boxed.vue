<template>
    <div class="form auth-boxed">
        <div class="form-container outer">
            <div class="form-form">
                <div class="form-form-wrap">
                    <div class="form-container">
                        <div class="form-content">
                            <div class="media">
                                <div class="w-img">
                                    <img src="@/assets/images/winmax.png" class="img-fluid" alt="img-fluid" />
                                </div>
                            </div>
                            <h1 class="">Sign In</h1>
                            <p class="">Log in to your account to continue.</p>

                            <form class="text-start">
                                <div class="form">
                                    <div id="username-field" class="field-wrapper input">
                                        <label for="username">USERNAME</label>
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
                                            class="feather feather-user"
                                        >
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" v-model="form.email" class="form-control" placeholder="e.g John_Doe" />
                                    </div>

                                    <div id="password-field" class="field-wrapper input mb-2">
                                        <div class="d-flex justify-content-between">
                                            <label for="password">PASSWORD</label>
                                            <router-link to="/auth/pass-recovery-boxed" class="forgot-pass-link">Forgot Password?</router-link>
                                        </div>
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
                                            class="feather feather-lock"
                                        >
                                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                        </svg>
                                        <input :type="pwd_type" v-model="form.password" class="form-control" placeholder="Password" />
                                        <svg
                                            @click="set_pwd_type"
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            id="toggle-password"
                                            class="feather feather-eye"
                                        >
                                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                            <circle cx="12" cy="12" r="3"></circle>
                                        </svg>
                                    </div>
                                    <div class="d-sm-flex justify-content-between">
                                        <div class="field-wrapper">
                                            <a href="javascript:;" class="btn btn-primary w-100 mb-4 me-2" @click="login" >Log In</a>
                                            <!-- <button type="button" class="btn btn-success mb-2 me-1" @click="kompliment()">kompliment</button> -->
                                        </div>
                                    </div>

                                    

                                    <!-- <p class="signup-link">Not registered ? <router-link to="/auth/register-boxed">Create an account</router-link></p> -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
    import { ref } from 'vue';
    import '@/assets/sass/authentication/auth-boxed.scss';

    import axios from 'axios';
    import { useRouter, useRoute } from 'vue-router'

    import { useStore } from 'vuex';
    

    import { useMeta } from '@/composables/use-meta';
    useMeta({ title: 'Login Boxed' });

    const pwd_type = ref('password');
    const store = useStore();

    const set_pwd_type = () => {
        if (pwd_type.value === 'password') {
            pwd_type.value = 'text';
        } else {
            pwd_type.value = 'password';
        }
    };

    const form = ref({
        email: '',
        password: ''
    })
    
    const router = useRouter()
    const route = useRoute()
    // console.log(form.value.email)
    
    const login = async () => {
            store.dispatch('LogIn', form.value)
            .then(response => {
                // console.log('result: ', response)
                router.push({path: '/barang'})
            })
            .catch(error => {
                // console.log('error: ', error)
                return
            })
            
            
        
    }

</script>
