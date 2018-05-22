import Vue from 'vue'
import App from './app.vue'
import Vuetify from 'vuetify'
import router from './routes.js';

import 'slick-carousel/slick/slick.css';
import 'vuetify/dist/vuetify.min.css'


Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    router,
    render: h => h(App)
  })
})