<template>
  <div>
    <v-layout row wrap class="movie_list" v-if="movies.length > 0">
      <v-flex xs12>
        <p class='name'>{{ name }}</p>
        <slick ref="slick" :options="slickOptions">
          <a v-for="movie in movies"
              :key="movie.attributes.id" 
              href="#"
              @click="openDetails($event, movie.attributes.id, movie.type)"
              ><img :src="movie.attributes.thumbnail_url">
          </a>
        </slick>
      </v-flex>
    </v-layout>
    <MovieMenu v-if="menuOpen && currentMovieId == movieId" :movieId="movieId"
               :id="movieId" 
               :type="movieType" 
               :closeDetails="closeDetails"/>
  </div>
</template>

<script>
  import MovieMenu from './_movie_menu.vue';
  import Slick from 'vue-slick';
  import { mapState } from 'vuex'
  import { mapActions } from 'vuex'

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
        menuOpen: false,
        movieId: null,
        movieType: null,
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
      Slick,
      MovieMenu
    },
    methods: {
      openDetails(e, id, type) {
        e.preventDefault();
        if(this.menuOpen == true && this.movieId == id){
          this.closeDetails();
        }else {
          this.changeId(id);
          this.movieId = parseInt(id);
          this.movieType = type;
          this.menuOpen = true;
        }
      },
      closeDetails(){
        this.menuOpen = false;
      },
      ...mapActions({
        changeId: 'MovieMenu/changeId',
      })
    },
    computed: mapState({
      currentMovieId: state => state.MovieMenu.currentMovieId,
    })
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