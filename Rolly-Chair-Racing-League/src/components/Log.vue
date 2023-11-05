<script setup>
const props =defineProps({
 events : Array,
})
</script>

<script>

</script>

<template>
    <div id="log-container" class="race-panel">
        <div class="box" >

        </div>
    </div>
</template>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Courier+Prime&display=swap');

#log-container{
    height: 80vh;
    width: 35vw;
}

.box {
    overflow-y: scroll;
    font-size: .75rem;
    color: white;
    height: 100%;
    width: 100%;
    font-family: 'Courier Prime', monospace;
}
</style>