   <template>
     <div>
        <Featured :movie="featuredMovie"/>
     </div>
   </template>

  <script>
    // ------- Dados Fake apenas para testarmos o layout -------- //
    const featuredMovie = {
                            id: 1,
                            title: 'Criando uma API completa com Ruby On Rails',
                            description: 'Saber como criar e consumir API’s é fundamental para qualquer programador, então nessa pequena série nós vamos ver o que é essencial para criar uma usando RoR.',
                            featured_thumbnail_url: 'https://onebitcode.com/wp-content/uploads/2018/05/bg-example.png'
                          }


    import Featured from './_featured.vue'

     export default {
       data () {
         return {
            featuredMovie: featuredMovie,
         }
       },
       components: {
         'Featured': Featured
       }
     }
   </script>

   <style scoped>
   </style>