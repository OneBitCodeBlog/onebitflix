   <template>
     <div>
        <Featured :movie="featuredMovie"  v-if="featuredMovie"/>
        <MovieList name='Continue assistindo' :movies='keepWatching' v-if="keepWatching"/>
        <MovieList v-for='(category, index) in categories'
                     :key='index'
                     :name='category.attributes.name'
                     :movies='[...category.attributes.movies.data, ...category.attributes.series.data]'/>
     </div>
   </template>

  <script>
    import Featured from './_featured.vue'
    import MovieList from './_movie_list.vue'
    import { mapState } from 'vuex';

    export default {
      data () {
        return {
        }
      },
      components: {
        'Featured': Featured,
        'MovieList': MovieList
      },
      mounted() {
        this.$store.dispatch('Watchable/getFeatured');
        this.$store.dispatch('Watchable/getKeepWatching');
        this.$store.dispatch('Watchable/getCategories');
      },
      computed: mapState({
        featuredMovie: state => state.Watchable.featured,
        keepWatching: state => state.Watchable.keepWatching,
        categories: state => state.Watchable.categories,
      })
    }
   </script>

   <style scoped>
   </style>