<script setup>
const props =defineProps({
    players : Array,
    track: String,
})

</script>



<template>
    <div id="track-container" class="race-panel">
    <svg id="track"  xmlns="http://www.w3.org/2000/svg">
        <path
        fill="none"
        stroke="lightgrey"
        :d="track" />
    

  <circle v-for="(player, index) in players" r="5" :fill="player.color">
    <animateMotion
    :dur="'5' + 's'"
    :keyPoints="player.distances.toString().replace(/,/g,';')"
    :keyTimes="player.times.toString().replace(/,/g,';') "
    repeatCount="1"
    :path="track" />
</circle>
</svg>
</div>
</template>


<!-- <script>
  let svg = document.getElementsByTagName("svg")[0];;
  if(svg)
  {
      let bb = svg.getBBox();
      svg.setAttribute("width", bb.width);
      svg.setAttribute("height", bb.height);
      svg.setAttribute("transform",
        "translate(-" + bb.width / 2 + ",-" + bb.height / 2 + ") \
        scale(" + 600 / bb.width + "," + 250 / bb.height + ") \
        translate(" + bb.width / 2 + "," + bb.height / 2 + ")");
  }
  else{
    console.log("why in gods name is this null")
  }
</script> -->

<style scoped>
#track{
    width: 100%;
    height: 100%;
}

#track-container{
    height: auto;
    width: 100%;
    /* border-color: white; */
}
</style>