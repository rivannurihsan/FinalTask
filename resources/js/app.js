import Vue from 'vue'
import router from './router.js'
import App from './App.vue'
import vuetify from './plugins/vuetify.js'
import store from './store/index'

import './bootstrap.js';

const app = new Vue({
    el: '#app',
    router,
    vuetify,
    store,
    components : {
        App
    },
});
