const MovieMenu = {
  namespaced: true,
  state: {
    currentMovieId: null
  },
  mutations: {
    changeId(state, currentMovieId) {
      state.currentMovieId = currentMovieId;
    }
  },
  actions: {
    changeId(context, currentMovieId) {
      context.commit('changeId', currentMovieId)
    }
  }
};

export default MovieMenu;