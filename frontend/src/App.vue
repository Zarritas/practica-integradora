<template>
  <prueba-api />
</template>

<script>
import PruebaApi from "./components/PruebaApi.vue";

export default {
  name: 'App',
  components: {
    PruebaApi,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
