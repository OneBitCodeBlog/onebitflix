<template>
  <v-layout row wrap>
    <v-flex md4 mb-3 mt-2 offset-md1 xs10 offset-xs1>
      <v-layout row wrap>
        <v-flex md12>
          <h4 class="subtitle white--text" v-if="watchable.type == 'serie'">10 Episódios</h4>
        </v-flex>
      </v-layout>
      <v-layout row wrap mt-3>
        <v-flex md3 sm3>
          <v-chip label dark>
            <v-icon left>label</v-icon>{{watchable.attributes.category}}
          </v-chip>
        </v-flex>
        <v-flex md6 pt-2 pl-2>
          <v-icon v-for="r in watchable.attributes.reviews_count" :key='r' color="red">favorite</v-icon>
          <v-icon v-for="r in (5 - watchable.attributes.reviews_count)" :key='watchable.attributes.reviews_count + r' color="white">favorite</v-icon>
        </v-flex>
      </v-layout>
      <v-layout row wrap mt-4>
        <v-flex sm3 md3>
          <v-btn color="red"
                 text-color="white"
                 large
                 :to="'/watch/'+ watchable.id"
                 class="white--text"
                 v-if="watchable.type == 'movie'">Assistir
          </v-btn>
          <v-btn color="red"
                 text-color="white"
                 large
                 :to="'/watch/'+ watchable.attributes.last_watched_episode"
                 class="white--text"
                 v-else-if="watchable.attributes.last_watched_episode">Assistir
          </v-btn>
          <v-btn color="red"
                 text-color="white"
                 large
                 class="white--text"
                 :to="'/watch/'+ watchable.relationships.episodes.data[0].id"
                 v-else>Assistir
          </v-btn>
        </v-flex>
        <v-flex sm3 md4>
          <v-btn color="black" class="watch-btn white--text" large>+ Minha Lista</v-btn>
        </v-flex>
      </v-layout>
      <v-layout row wrap mt-2>
        <v-flex md12>
          <p class="white--text text">{{watchable.attributes.description}}</p>
        </v-flex>
      </v-layout>
    </v-flex>
    <v-flex md5 offset-md1 hidden-sm-and-down>
      <v-layout row wrap mt-12 center xs-10>
        <img :src="watchable.attributes.thumbnail_cover_url" class="responsive-img"/>
      </v-layout>
    </v-flex>
  </v-layout>
</template>

<script>
  export default {
    props: {
      watchable: {
        type: Object,
        required: true
      }
    },
    data () {
      return { }
    }
  }
</script>

<style scoped>
  .subtitle{
    font-size: 22px;
  }
  .text{
    font-size: 16px;
  }
  .btn{
    color: white;
    font-weight: 600;
    font-family: 'Source Sans Pro';
    margin-left: 0px;
  }
  .watch-btn {
    border-color: white !important;
    border-style: solid;
  }
  .chip{
    margin-left: 0px;
  }
</style>