import Vue from 'vue'
import App from './app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    render: h => h(App)
  })
})