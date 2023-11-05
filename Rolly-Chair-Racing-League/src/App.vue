<script setup>
import Race from"./components/Race.vue"
import Log from "./components/Log.vue"
import LeaderBoard from "./components/LeaderBoard.vue"
import Header from "./components/Header.vue"
</script>

<template>
  <div id="main-page">
    <Header></Header>
    <div id="main-page-flex">
      <Race></Race>
      <LeaderBoard></LeaderBoard>
      <Log></Log>
    </div>
    <Footer></Footer>
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

  #main-page-flex {
    display: flex;
    flex-direction: row;
    justify-content:space-between;
  }

  #main-page {
    display: flex;
    align-items: stretch;
    flex-direction: column;
    background-color: #000000;
  }
}
</style>

<style>

.main-component {
  background-color: #232323;
  border: 10px solid black;
  padding: 20px;
}

</style>
