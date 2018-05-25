import Vue from 'vue';
import Vuex from 'vuex';
Vue.use(Vuex);

import MovieMenu from './modules/movie_menu';
import Watchable from './modules/watchable';

const store = new Vuex.Store({
  modules: {
    MovieMenu,
    Watchable
  }
});

export default store;