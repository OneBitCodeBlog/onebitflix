import Vue from 'vue';
import Vuex from 'vuex';
Vue.use(Vuex);

import MovieMenu from './modules/movie_menu';

const store = new Vuex.Store({
  modules: {
    MovieMenu
  }
});

export default store;