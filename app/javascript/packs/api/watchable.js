import Http from './http';


export default {
  getFeatured() {  
    return Http.get('/dashboard', {
      params: {
        type: 'highlight'
      }
    })
  },
  getCategories (){  
    return Http.get('/dashboard', {
      params: {
        type: 'category'
      }
    });
  },
  getKeepWatching (){  
    return Http.get('/dashboard', {
      params: {
        type: 'keep_watching'
      }
    });
  }
}