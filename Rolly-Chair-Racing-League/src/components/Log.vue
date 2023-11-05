<script setup>
</script>

<template>
    <div id="log-container" class="main-component">
        <div class="box" id="id1">
        <p>
        line 1
        </p>
        <p>
        line 2
        </p>
        </div>
        <button type="button"
        onclick="document.getElementById('id1').innerHTML += '<p>line 3</p>'">
        Click me to get a new line.</button>
    </div>
</template>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Courier+Prime&display=swap');

#log-container{
    height: 80vh;
    width: 35vw;
}

.box {
    overflow: scroll;
    font-size: 12px;
    height: 100%;
    width: 100%;
    font-family: 'Courier Prime', monospace;
}
</style>