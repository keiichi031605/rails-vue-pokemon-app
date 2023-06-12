<template>
  <div style="background-color: #EEECEC; height: 1240px;">
    <v-container>
      <!-- audio button -->
      <div id="audio_button">
        <v-img
          v-if="music === false"
          :src="require('../assets/images/play.png')"
          @click="playMusic()"
        />
        <v-img
          v-else
          :src="require('../assets/images/stop.png')"
          @click="stopMusic()"
        />
      </div>
  
      <!-- main page -->
      <v-col cols="12" style="margin-bottom: 200px;">
        <div class="pokemon-title">
          <v-img
            :src="require('../assets/images/pokemon_title.png')"
            height="300"
          />
        </div>
      </v-col>
      <v-row class="trainer-pokemon">
        <v-col cols="4"></v-col>
        <v-col cols="2" max-width="300">
          <v-img
            :src="require('../assets/images/ash.png')"
            height="400"
            max-width="300"
          />
        </v-col>
        <v-col cols="2" style="padding-top:100px;">
          <transition-group id="pokemon-slider" tag="div" class="img-slider" name="slide">
            <div v-for="number in [currentImg]" v-bind:key="number" >
              <v-img
              :src="imgList[Math.abs(currentImg) % imgList.length]"
              height="300"
              max-width="200"
              />
            </div>
          </transition-group>
        </v-col>
        <v-col cols="4"></v-col>
      </v-row>
      <v-col cols="12">
        <div class="d-flex justify-center">
          <v-img
            :src="require('../assets/images/keiichi.png')"
            height="50"
            max-width="400"
          />
        </div>
      </v-col>
    </v-container>
  </div>
</template>

<script>

export default {
  name: 'HomePage',

  data: () => ({
    music: false,
    audio: new Audio(require('../assets/images/TitleScreen.mp3')),
    imgList: [
      require('../assets/images/pokemons/bulbasaur.png'),
      require('../assets/images/pokemons/charmander.png'),
      require('../assets/images/pokemons/squirtle.png'),
      require('../assets/images/pokemons/jolteon.png'),
      require('../assets/images/pokemons/mew.png'),
      require('../assets/images/pokemons/gyarados.png'),
      require('../assets/images/pokemons/charizard.png'),
    ],
    currentImg: 0

  }),
  mounted() {
    setInterval(() => {
        this.currentImg = this.currentImg + 1;
    }, 5000);
  },
  methods: {
    playMusic() {
      let vim = this;
      vim.audio.play();
      vim.music = true;
    },
    stopMusic() {
      let vim = this;
      vim.audio.pause();
      vim.audio.currentTime = 0;
      vim.music = false
    }
  }
}
</script>
<style scoped>
#audio_button {
  width: 200px;
  padding: 4px 4px 4px 4px;
  position: fixed;
  right: 60px;
  bottom: 60px;
  z-index: 9999;
  border-radius: 7px;
}
.pokemon-title {
  margin-top: 25px;
  margin-bottom: 50px;
}

#pokemon-slider {
  overflow: hidden;
}
.slide-leave-active,
.slide-enter-active {
  transition: 1s;
}
.slide-enter {
  transform: translate(100%, 0);
}
.slide-leave-to {
  transform: translate(-100%, 0);
}
.img-slider{
  overflow: hidden;
  position: relative;
  height: 300px;
  max-width: 200px;
}
.img-slider img {
  position: absolute;
  /* top: 0;
  left: 0;
  bottom: 0;
  right:0; */
}
</style>
