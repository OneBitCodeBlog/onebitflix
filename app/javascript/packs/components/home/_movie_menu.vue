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
      <Reviews v-if="contentActive == 'reviews'" :reviews="reviews" :id="watchable.attributes.id" :type="watchable.type"/>
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
  import { mapActions } from 'vuex'
  import { mapState } from 'vuex'

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
      }
    },
    methods: {
      changeContent (content){
        this.contentActive = content;
      },
      close () {
       this.closeDetails();
      },
      ...mapActions({
        getWatchable: 'Watchable/getWatchable',
        getReviews: 'Review/index'
      })
    },
    components: {
      Details: Details,
      Reviews: Reviews
    },
    watch: { 
      id: function() {
        this.getWatchable({id: this.id, type: this.type})
        this.getReviews({id: this.id, type: this.type})
      },
      serie: function() {
        this.getWatchable({id: this.id, type: this.type})
        this.getReviews({id: this.id, type: this.type})
      }
    },
    mounted() {
      this.getWatchable({id: this.id, type: this.type})
      this.getReviews({id: this.id, type: this.type})
    },
    computed: mapState({
      watchable: state => state.Watchable.watchable,
      reviews: state => state.Review.reviews,
    })
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