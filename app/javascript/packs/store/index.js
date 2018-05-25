import Vue from 'vue';
import Vuex from 'vuex';
Vue.use(Vuex);

import MovieMenu from './modules/movie_menu';
import Watchable from './modules/watchable';
import Review from './modules/review';

const store = new Vuex.Store({
  modules: {
    MovieMenu,
    Watchable,
    Review
  }
});

export default store;