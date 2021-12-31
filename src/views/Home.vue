<template>
  <div class="home">
    <div class="information-section">
      <span class="yellow-text">My name is Chelsie Conrad</span>
      <span class="large-text"
        >I Am A Software Engineer From Salt Lake City.</span
      >
      <span class="pink-text"
        >I specialize in front-end technologies including Javascript, Vue,
        React, Nest, and CSS.</span
      >
      <button class="contact-button">Contact Me</button>
    </div>
    <div class="image-section">
      <img :src="require('@/assets/cat.png')" />
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import HelloWorld from "@/components/HelloWorld.vue"; // @ is an alias to /src

@Component({
  components: {
    HelloWorld,
  },
})
export default class Home extends Vue {}
</script>

<style lang="scss" scoped>
.home {
  display: flex;
  gap: 64px;
  .information-section {
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 40%;
    .yellow-text {
      color: #ffc429;
      font-size: 20px;
      font-weight: 500;
      text-transform: uppercase;
      line-height: 34px;
    }
    .large-text {
      font-size: 64px;
      font-weight: 500;
      color: white;
      margin: 8px 0px;
      line-height: 80px;
    }
    .pink-text {
      color: rgba(255, 255, 255, 0.7);
      font-size: 17px;
      margin: 24px 0px;
      line-height: 26px;
    }
    .contact-button {
      background-color: #f57479;
      border: none;
      border-radius: 4px;
      padding: 12px 35px;
      font-size: 16px;
      color: white;
      width: fit-content;
    }
  }
  .image-section {
    background-color: rgba(255, 255, 255, 0.7);
    border-radius: 50%;
    width: 38vw;
    height: 38vw;
    img {
      height: 40vw;
    }
  }
}
</style>