   <template>
     <div>
        <Featured :movie="featuredMovie"  v-if="featuredMovie"/>
        <MovieList v-for='(category, index) in categories'
                    :key='index'
                    :name='category.name'
                    :movies='category.movies'/>
     </div>
   </template>

  <script>
    // ------- Dados Fake apenas para testarmos o layout -------- //

    const categoriesMock = [
      {
        name: "RoR", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      },{
        name: "VueJS", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      },{
        name: "Chatbots", movies: [
          {id: '1', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '2', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '3', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '4', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '5', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'},
          {id: '6', thumb_url: 'https://onebitcode.com/wp-content/uploads/2018/05/capa-v-rails-admin-1.png'}
        ]
      }
    ];

    import Featured from './_featured.vue'
    import MovieList from './_movie_list.vue'
    import { mapState } from 'vuex';

    export default {
      data () {
        return {
          categories: categoriesMock
        }
      },
      components: {
        'Featured': Featured,
        'MovieList': MovieList
      },
      mounted() {
        this.$store.dispatch('Watchable/getFeatured');
      },
      computed: mapState({
        featuredMovie: state => state.Watchable.featured,
      })
    }
   </script>

   <style scoped>
   </style>