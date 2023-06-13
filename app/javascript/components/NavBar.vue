<template>
  <div>
    <v-app-bar dense color="#08eb58">
      <v-tabs>
        <v-tab>
          <div to="/">
            <v-img
              :src="require('../../assets/images/monster_ball.png')"
              height="30"
              width="30"
            />
          </div>
        </v-tab>
        <v-tab>
          <div class="d-flex flex-start menu-item" @click="hitPokemonIndex">
            <v-img
              :src="require('../../assets/images/dragonite.png')"
              height="35"
              width="35"
              class="mr-1"
            />
            <p class="ma-2">
              Pokemon
            </p>
          </div>
        </v-tab>
        <!-- <v-tab>
          <v-img
            :src="require('../../assets/images/magnifying_glass.png')"
            height="30"
            width="30"
          />
          Search
        </v-tab>
        <v-tab>
          <v-img
            :src="require('../../assets/images/trainer.png')"
            class="mr-1"
            height="30"
            width="30"
          />
          About
        </v-tab> -->
      </v-tabs>
    </v-app-bar>
  </div>
</template>

<script> 
export default {
  data: () => ({
  }),
  methods: {
    hitPokemonIndex() {
      // TODO: this approach is not ideal
      this.$router.push('/pokemons');
      location.reload()
    }
  }
}
</script>

<style scoped>
  .home-icon {
    margin-right: 50px;
  }
  .menu-item {
    text-decoration: none;
  }
</style>
