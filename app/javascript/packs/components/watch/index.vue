<template>
  <v-container mt-1>
    <v-layout row>
      <v-flex xs12 md10 offset-md1 center>
        <v-layout row>
          <v-flex xs12 md10>
            <h1 class="main_title">{{ serie.name }}</h1>
          </v-flex>
        </v-layout>

        <v-layout row pt-2 pb-2>
          <v-flex xs12 md12>
            <d-player :options="options"
                  @play="play"
                  ref="player"
                  @ended="ended"
            >
            </d-player>
          </v-flex>
        </v-layout>

        <v-layout row wrap>
          <v-flex xs12 md6 mt-1>
            <h1 class="secundary_title">{{ movie.name }}</h1>
          </v-flex>

          <v-flex xs8 md3 class="text-lg-right">
            <v-menu open-on-hover top offset-y>
              <v-btn slot="activator" dark large to="/watch/4">
                <v-icon left>video_library</v-icon>Episodios
              </v-btn>

              <v-list dark>
                <v-list-tile v-for="(item, index) in 10" :key="index" to="/watch/1">
                  <v-list-tile-title class="white--text">Episode {{ item }}</v-list-tile-title>
                </v-list-tile>
              </v-list>
            </v-menu>
          </v-flex>

          <v-flex xs8 md3 class="text-lg-right">
            <v-btn dark large to="/watch/1">
              <v-icon left>skip_next</v-icon>Proximo
            </v-btn>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
  const serie_data_mock = {name: "Criando uma API com Rails", episodes: []}
  const movie_data_mock = {name: "1 - Preparando a API", movie_url: ""}
  import VueDPlayer from 'vue-dplayer'

  export default {
    mounted() {
      const player = this.$refs.player.dp;
      player.seek(10);
    },
    data () {
      return { 
        serie: serie_data_mock,
        movie: movie_data_mock,
        options: {
          screenshot: true,
          video: {
            url: 'http://static.smartisanos.cn/common/video/t1-ui.mp4',
            pic: 'http://static.smartisanos.cn/pr/img/video/video_03_cc87ce5bdb.jpg',
            init: 1000,
          },
          autoplay: false,
        },
        player: this.player,
      }
    },
    components: {
      'd-player': VueDPlayer
    },
    methods: {
      play() {
        console.log('play callback')
      },
      ended() {
        console.log('ended callback')
      }
    }
  }
</script>

<style scoped>
  .main_title{
    color: white;
    font-size: 24px !important;
    font-family: 'Source Sans Pro';
    font-weight: 600;
  }
  .secundary_title{
    color: white;
    font-size: 20px !important;
    font-family: 'Source Sans Pro';
    font-weight: 600;
  }
  .btn {
    margin-right: 0px;
  }
</style>