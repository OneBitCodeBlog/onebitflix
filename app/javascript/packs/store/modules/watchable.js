import Api from '../../api';

const Watchable = {
    namespaced: true,
    state: {
      featured: null
    },
    mutations: {
      setFeatured(state, watchable) {
        state.featured = watchable.data.attributes;
      }
    },
    actions: {
      getFeatured(context) {
        Api.Watchable.getFeatured()
          .then(response => response.data)
          .then(watchable => {
            context.commit('setFeatured', watchable)
          }).catch(function (error) {
            console.log(error);
          });
      }
    }
  };
  
  export default Watchable;