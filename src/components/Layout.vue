<template>
  <div>
    <nav class="navbar">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/resume">Resume</router-link>
    </nav>
    <main class="main-content">
      <slot />
    </main>
    <footer class="footer">&copy; Awesome Company</footer>
  </div>
</template>

<script>
export default {
  name: "Layout",
};
</script>

<style lang="scss" scoped>
.navbar,
.footer {
  text-align: center;
}
.navbar {
  color: white;
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  a {
    color: white;
    text-decoration: none;
    font-size: 16px;
    font-weight: 500;
  }
}
.main-content {
  margin-left: 112px;
}
</style>