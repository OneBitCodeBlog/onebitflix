import Http from './http';

export default {
  index(id, type){
    return Http.get('/reviews', {
      params: {
        id: id,
        type: type
      }
    });
  },
  create(id, type, description, rating){  
    return Http.post('/reviews', {
      review: {
        reviewable_id: id,
        reviewable_type: type.replace(/\b\w/g, l => l.toUpperCase()),
        description: description,
        rating: rating
      }
    });
  }
}