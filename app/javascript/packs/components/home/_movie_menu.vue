<template>
  <div v-if="watchable != null">
    <v-layout class="content" mt-3 wrap row>
      <v-flex md10 offset-md1 xs7 offset-xs1 sm9 mt-4>
        <h4 class="title white--text" >{{ watchable.attributes.title }}</h4>
      </v-flex>
      
      <v-flex md1 xs1 class="text-md-center" mt-4>
        <v-btn flat @click="close()">
          <v-icon color="white">clear</v-icon>
        </v-btn>
      </v-flex>
      <Details v-if="contentActive == 'details'" :watchable="watchable" />
      <!-- <Episodes v-if="contentActive == 'episodes'"/> -->
      <Reviews v-if="contentActive == 'reviews'" :watchable="watchable" />
    </v-layout>
    <v-layout row wrap class="navigation">
      <v-flex md6>
        <v-tabs fixed-tabs color="black" dark>
          <v-tabs-slider color="red"></v-tabs-slider>
          <v-tab color="white" href="#details" @click="changeContent('details')">
            <p color="white">Details</p>
          </v-tab>
          <v-tab color="white" href="#episodes" @click="changeContent('episodes')" v-if="watchable.type == 'serie'">
            <p color="white">Episódios</p>
          </v-tab>
          <v-tab color="white" href="#reviews" @click="changeContent('reviews')">
            <p color="white">Reviews</p>
          </v-tab>
        </v-tabs>
      </v-flex>
    </v-layout>
  </div>
  
</template>

<script>
  import Details from './_details.vue';
  import Reviews from './_reviews.vue';

  // ------- Dados Fake apenas para testarmos o layout -------- //
  const watchable = {
    id: 1,
    type: 'serie',
    attributes: {
      title: 'Ruby On Rails API Completa',
      reviews_count: 2,
      description: 'Saber como criar e consumir API’s é fundamental para qualquer programador, então nessa pequena série nós vamos ver o que é essencial para criar uma usando RoR.',
      category: 'Ruby On Rails',
      thumbnail_cover_url: 'https://onebitcode.com/wp-content/uploads/2018/05/rails-admin-serie-cover.png'
    }
  }

  export default {
    props: {
      id: {
        type: Number,
        required: true,
      },
      type: {
        type: String,
        required: true,
      },
      closeDetails:  {
        type: Function,
        required: true,
      }
    },
    data () {
      return { 
        contentActive: 'details',
        watchable: watchable
      }
    },
    methods: {
      changeContent (content){
        this.contentActive = content;
      },
      close () {
       this.closeDetails();
      }
    },
    components: {
      Details: Details,
      Reviews: Reviews
    }
  }
</script>

<style scoped>
  .navigation{
    background-color: black;
  }
  .content{
    background-color: black;
    font-family: 'Source Sans Pro';
  }
  .title{
    font-weight: 600;
    font-size: 28px !important;
  }
</style>