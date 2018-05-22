<template>
  <div>
    <v-layout row wrap class="movie_list">
      <v-flex xs12>
        <p class='name'>{{ name }}</p>
        <slick ref="slick" :options="slickOptions">
          <a v-for="movie in movies"
              :key="movie.id" 
              href="#"
              ><img :src="movie.thumb_url">
          </a>
        </slick>
      </v-flex>
    </v-layout>
  </div>
</template>

<script>
  import Slick from 'vue-slick';

  export default {
    props:  {
              name: {
                type: String,
                required: true,
              },
              movies: {
                type: Array,
                required: true,
              }
            },
    data () {
      return {
        slickOptions: {
          slidesToShow: 4,
          arrows: false,
          responsive: [
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
        }
      }
    },
    components: {
      Slick
    }
  }
</script>

<style scoped>
  .movie_list{
    margin-left: 4%;
    margin-top: 30px;
    margin-bottom: 20px;
  }
  .name {
    font-size: 24px !important;
    font-family: 'Source Sans Pro';
    font-weight: 600;
    color: white;
  }
</style>