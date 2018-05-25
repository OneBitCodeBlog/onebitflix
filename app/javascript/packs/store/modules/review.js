import Api from '../../api';

const Reviews = {
    namespaced: true,
    state: {
      reviews: null,
      errorMessage: null,
      errorActive: false
    },
    mutations: {
      setReviews(state, reviews) {
        state.reviews = reviews.data;
      },
      pushReview(state, review) {
        state.reviews.push(review);
      },
      setErrorMessage(state, {message, status}) {
        state.errorMessage = message;
        state.errorActive = status;
      }
    },
    actions: {
      index(context, {id, type}) {
        Api.Review.index(id, type)
          .then(response => response.data)
          .then(reviews => {
            context.commit('setReviews', reviews);
            context.commit('setErrorMessage', {message: "", status: false})
          }).catch(function (error) {
            console.log(error);
          });
      },
      create(context, {id, type, description, rating}) {
        Api.Review.create(id, type, description, rating)
          .then(response => response.data)
          .then(review => {
            context.commit('pushReview', {attributes: review});
            context.commit('setErrorMessage', {message: "", status: false})
          }).catch(function (error) {
            context.commit('setErrorMessage', {message: "Erro na criação do review", status: true})
          });
      }
    } 
  };
  
  export default Reviews;