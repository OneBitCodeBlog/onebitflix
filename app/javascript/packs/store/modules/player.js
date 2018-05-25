import Api from '../../api';

const Player = {
  namespaced: true,
  state: {
    player: null,
    movie: null,
    serie: null
  },
  mutations: {
    setPlayer(state, player) {
      state.player = player.data.attributes;
      state.movie = player.included[0];
      state.serie = (player.included[1])? player.included[1] : null;
    }
  },
  actions: {
    show(context, movie_id) {
      Api.Player.show(movie_id)
      .then(response => response.data)
      .then(player => {
        context.commit('setPlayer', player);
      }).catch(function (error) {
        console.log(error);
      });
    },
    update(context, {id, elapsed_time, end_time}) {
      Api.Player.update(id, elapsed_time, end_time)
      .then(response => response.data)
      .then(player => {
        console.log(player);
      }).catch(function (error) {
        console.log(error);
      });
    }
  }
};

export default Player;