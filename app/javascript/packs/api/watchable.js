import Http from './http';
import { serialize } from 'uri-js';


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
  },
  getWatchable (id, type){
    return Http.get(`/${type.toLowerCase()}s/${id}`);
  }
}