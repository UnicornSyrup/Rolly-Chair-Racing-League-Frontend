<script setup>
</script>

<template>
    <div id="log-container">
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
#track-container{
    height: 80vh;
    width: 40vw;
    border-color: white;
    background: dodgerblue;
}
</style>