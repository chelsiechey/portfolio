<template>
  <div id="app">
    <layout>
      <router-view />
    </layout>
  </div>
</template>

<script>
import Layout from "@/components/Layout.vue";

export default {
  name: "Home",
  components: {
    Layout,
  },
};
</script>

<style lang="scss">
body {
  background-color: #470fa8;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  // text-align: center;
  color: #2c3e50;
}
</style>
