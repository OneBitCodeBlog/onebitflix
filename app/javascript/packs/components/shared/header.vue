<template>
  <v-toolbar color="black" dark>
    <v-layout row wrap>
       <v-flex xs10 sm4>
          <router-link to="/">
            <img :src='logo' class="logo"/>
          </router-link>
        </v-flex>
    </v-layout>
    <v-toolbar-items class="hidden-sm-and-down">
        <v-text-field
          flat
          prepend-icon="search"
          label="Search"
          class="hidden-sm-and-down"
          color="red"
          pr-3
      ></v-text-field>

      <v-menu bottom flat >
        <v-btn slot="activator" flat>
          <v-icon large>account_box</v-icon>
        </v-btn>
        <v-list>
          <v-list-tile>
            <v-list-tile-title>
              <a href="/users/edit">Details</a>
            </v-list-tile-title>
          </v-list-tile>
          <v-list-tile>
            <v-list-tile-title>
              <a href="/users/sign_out">Logout</a>
            </v-list-tile-title>
          </v-list-tile>
        </v-list>
      </v-menu>
    </v-toolbar-items>
  </v-toolbar>
</template>

<script>
  import Logo from '../../assets/logo.png';
  export default {
    data () { 
      return {
        logo: Logo
      }
    }
  }
</script>

<style scoped>
  .logo {
    width: 120px !important;
    margin-top: 10px;
  }
</style>