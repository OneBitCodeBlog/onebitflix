import Http from './http';

export default {
  show(id){
    return Http.get(`/movies/${id}/executions`);
  },
  update(id, elapsed_time, end_time){  
    return Http.put(`/movies/${id}/executions`, {
      execution: {
        elapsed_time: elapsed_time, 
        end_time: end_time
      }
    });
  }
}