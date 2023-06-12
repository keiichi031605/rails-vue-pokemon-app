require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from 'vue-turbolinks';
import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css';
import axios from "axios";
import './components';
import VueRouter from 'vue-router';
// import components for vue-router
import HomeIndex from '../components/HomeIndex.vue';
import PokemonIndex from '../components/PokemonIndex.vue';

const token = document.querySelector('meta[name="csrf-token"]');
if (token) axios.defaults.headers.common['X-CSRF-Token'] = token.getAttribute('content');

Vue.use(TurbolinksAdapter);
// vuetify setup
Vue.use(Vuetify);
const vuetify = new Vuetify();

// vue-router setup
Vue.use(VueRouter);
const routes = [
  { path: '/', component: HomeIndex },
  { path: '/pokemons', component: PokemonIndex }
]
const router = new VueRouter({
  mode: 'history',
  routes
})

document.addEventListener('turbolinks:load', () => {
  new Vue({
    el: '[data-behavior="vue"]',
    vuetify,
    router, // Add this to your Vue instance
  });
});