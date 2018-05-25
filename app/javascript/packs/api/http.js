import axios from 'axios';
let token = document.getElementsByName('csrf-token')[0].getAttribute('content')

const http = axios.create({
  baseURL: '/api/v1',
  timeout: 1000,
  headers: {
  	'X-Custom-Header': 'foobar',
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'X-CSRF-Token': token,
  }
});

export default http;