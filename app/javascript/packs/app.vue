<template>
  <v-app>
    <Header/>
    <v-content>
      <h4 class="white--text">Main Component</h4>
    </v-content>
    <Footer/>
  </v-app>
</template>

<script>
  import Footer from './components/shared/footer.vue';
  import Header from './components/shared/header.vue';

  export default {
    data () {
      return {
      
      }
    },
    components: {
      'Footer': Footer,
      'Header': Header
    }
  }
</script>

<style>
  #app {
    background-color: #0c0c0c !important;
  }
</style>