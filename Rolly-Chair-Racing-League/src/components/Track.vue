<script setup>
</script>

<template>
    <div id="track-container">
    <svg viewBox="0 0 200 100" xmlns="http://www.w3.org/2000/svg">
    <path
        fill="none"
        stroke="lightgrey"
        d="M20,50 C20,-50 180,150 180,50 C180-50 20,150 20,50 z" />

    <circle r="5" fill="red">
        <animateMotion
        dur="10s"
        repeatCount="indefinite"
        path="M20,50 C20,-50 180,150 180,50 C180-50 20,150 20,50 z" />
    </circle>
        <circle r="5" fill="blue">
        <animateMotion
        dur="10s"
        keyPoints="0;0.5;1"
        keyTimes="0;0.15;1"
        repeatCount="indefinite"
        path="M20,50 C20,-50 180,150 180,50 C180-50 20,150 20,50 z" />
    </circle>
    </svg>
    </div>
</template>

<style scoped>
#track-container{
    height: 80vh;
    width: 50vw;
    border-color: white;
    background: dodgerblue;
}
</style>