<template>
  <div style="background-color: #EEECEC;">
    <!-- audio button -->
    <div id="audio_button">
      <v-img
        v-if="isPlayed === false"
        :src="require('../../assets/images/play.png')"
        @click="playMusic()"
      />
      <v-img
        v-else
        :src="require('../../assets/images/stop.png')"
        @click="stopMusic()"
      />
    </div>

    <!-- main page -->
    <div class="pokemon-title">
      <v-img
        :src="require('../../assets/images/pokemon_title.png')"
        max-width="700"
      />
    </div>
    <div class="trainer-pokemon">
      <v-img
        :src="require('../../assets/images/ash.png')"
        max-width="220"
        height="300"
      />
      <v-img
        :src="require('../../assets/images/pokemons/charizard.png')"
        max-width="300"
        height="300"
      />
    </div>
    <div class="signature">
      <v-img
        class="mt-10"
        :src="require('../../assets/images/keiichi.png')"
        max-width="300"
      />
    </div>
  </div>
</template>

<script>

export default {
  name: 'HomeIndex',

  data: () => ({
    isPlayed: false,
    audio: false,
    // audio: new Audio(require('../../assets/images/TitleScreen.mp3')),
  }),
  methods: {
    playMusic() {
      let vim = this;
      vim.audio.play();
      vim.isPlayed = true;
    },
    stopMusic() {
      let vim = this;
      vim.audio.pause();
      vim.audio.currentTime = 0;
      vim.isPlayed = false
    }
  }
}
</script>

<style scoped>
#audio_button {
  width: 150px;
  padding: 4px 4px 4px 4px;
  position: fixed;
  right: 60px;
  bottom: 60px;
  z-index: 9999;
  border-radius: 7px;
}
.pokemon-title {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 25px;
  margin-bottom: 50px;
}
.trainer-pokemon, .signature {
  display: flex;
  justify-content: center;
  align-items: center;
}

</style>
