import Vue from 'vue'
import App from './app.vue'
import Vuetify from 'vuetify'
import router from './routes.js';
import store from './store';


import 'slick-carousel/slick/slick.css';
import 'vuetify/dist/vuetify.min.css';
import 'vue-dplayer/dist/vue-dplayer.css';


Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    router,
    store,
    render: h => h(App)
  })
})