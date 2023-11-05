<script setup>
import Race from"./components/Race.vue"
import Header from "./components/Header.vue"
</script>

<template>
  <div id="main-page">
    <Header></Header>
    <div id="main-page-flex">
      <Race></Race>
    </div>
    <!-- <Footer></Footer> -->
  </div>

</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  /* #main-page-flex {

  } */

  #main-page {
    display: flex;
    align-items: stretch;
    flex-direction: column;
    background-color: #000000;
  }
}
</style>


