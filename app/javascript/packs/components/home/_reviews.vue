  <template>
    <v-layout row wrap>
      <v-flex md5  offset-md1 xs10 offset-xs1 mb-3 mt-2>
        <v-layout row>
          <v-flex xs12 sm12>
            <v-card>
              <v-list three-line class="review-box" dark subheader v-if="reviews.length > 0">
                <template v-for="(review, index) in reviews">
                  <v-list-tile :key="index" avatar ripple>
                    <v-list-tile-content>
                      <v-list-tile-sub-title>{{ review.attributes.description }}</v-list-tile-sub-title>
                      <v-list-tile-sub-title>
                        <v-icon v-for="r in review.attributes.rating" :key='r' color="red">favorite</v-icon>
                        <v-icon v-for="r in (5 - review.attributes.rating)" :key='review.attributes.rating + r' color="white">favorite</v-icon>
                      </v-list-tile-sub-title>
                    </v-list-tile-content>
                    </v-list-tile>
                  <v-divider v-if="index + 1 < reviews.length" :key="`divider-${index}`"></v-divider>
                </template>
              </v-list>
            </v-card>
          </v-flex>
        </v-layout>
      </v-flex>
      <v-flex md4 xs10 mb-3 mt-2 offset-xs1>
          <v-card color="grey darken-3">
              <v-card-text>
                  <h2 class="title">Deixe seu opinião</h2>
                  <v-container fluid>
                      <v-layout row wrap>
                        <heart-rating v-model="rating"
                                      :item-size="20"
                                      :show-rating="false"
                                      active-color="#f44336"
                                      inactive-color="#fff"
                                      border-color="#424242"
                                      ></heart-rating>

                        <v-flex md12>
                            <v-text-field
                                name="input-1"
                                label="Descreva o que achou em pelo menos 50 caracteres..."
                                textarea
                                dark
                                color="red"
                                rows="2"
                                v-model="description"
                                required
                            ></v-text-field>

                             
                        </v-flex>

                        <v-flex xs8 md3>
                          <v-btn dark large @click="createReview">
                            <v-icon left>send</v-icon>Enviar
                          </v-btn>
                        </v-flex>

                        <v-flex xs12>
                          <v-alert :value="true" outline color="error" icon="priority_high" v-if="errorActive">
                            {{ errorMessage }}.
                          </v-alert>
                        </v-flex>
                      </v-layout>
                  </v-container>
              </v-card-text>
          </v-card>
      </v-flex>
    </v-layout>
  </template>

  <script>
    import {HeartRating} from 'vue-rate-it';
    import { mapState } from 'vuex'
    import { mapActions } from 'vuex'

    export default {
      data () {
        return { 
          rating: 0,
          description: '',
          errorReview: null
        }
      },
      props: {
        reviews: {
          type: Array,
          required: true
        },
        id: {
          type: Number,
          required: true
        },
        type: {
          type: String,
          required: true
        }
      },
      components:{
        HeartRating
      }, 
      methods: {
        createReview() {
          this.reviewCreate({
            id: this.id,
            type: this.type,
            rating: this.rating,
            description: this.description
          })
          this.description = '';
          this.rating = 0;
        },
        ...mapActions({
          reviewCreate: 'Review/create',
        })
      },
      computed: mapState({
        errorMessage: state => state.Review.errorMessage,
        errorActive: state => state.Review.errorActive,
      })
    }
  </script>

  <style scoped>
    .title{
      font-weight: 600;
      font-size: 26px !important;
      font-family: 'Source Sans Pro';
      color: white;
      margin-left: 12px;
    }
    .review-box{
      overflow: auto; max-height: 300px
    }
    .btn{
      margin-left: 0
    }
  </style>