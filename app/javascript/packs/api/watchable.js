import Http from './http';


export default {
  getFeatured() {  
    return Http.get('/dashboard', {
      params: {
        type: 'highlight'
      }
    })
  }
}