<script setup>
const props =defineProps({
    players : Array,
    track: String,
})

</script>

<script>
// function(){
//     let svg = document.getElementById("track-container");
//   if(svg)
//   {
//       let bb = svg.getBBox();
//       svg.setAttribute("width", bb.width);
//       svg.setAttribute("height", bb.height);
//       svg.setAttribute("transform",
//         "translate(-" + bb.width / 2 + ",-" + bb.height / 2 + ") \
//         scale(" + 600 / bb.width + "," + 250 / bb.height + ") \
//         translate(" + bb.width / 2 + "," + bb.height / 2 + ")");
//   }
//   else{
//     console.log("why in gods name is this null")
//   }
// }   viewBox="10,0,350,350"
  

// window.addEventListener("load", (event) => {
//       let svg = document.getElementById("track-window");
//   if(svg)
//   {
//     console.log("it work maybe")
//       let bb = svg.getBBox();


//       let parent = document.getElementById("track-container");
//       if(parent.clientHeight - bb.height > 0)
//       {
//         let desiredHeight = bb.width*parent.clientHeight/bb.height;
//         let desiredWidth = bb.height*parent.clientHeight/bb.height;
//         svg.setAttribute("width", desiredHeight);
//         svg.setAttribute("height", desiredWidth);
//         svg.setAttribute("0 0 "+desiredWidth+" "+desiredHeight);
//       }
//       else if(parent.clientWidth -bb.width> 0)
//       {
//         let desiredHeight = bb.width*parent.clientWidth/bb.width;
//         let desiredWidth = bb.height*parent.clientWidth/bb.width;
//         svg.setAttribute("width", desiredHeight);
//         svg.setAttribute("height", desiredWidth);
//         svg.setAttribute("0 0 "+desiredWidth+" "+desiredHeight);
//       }
    //   svg.setAttribute("transform",
    //     "translate(-" + bb.width / 2 + ",-" + bb.height / 2 + ") \
    //     scale(" + 600 / bb.width + "," + 250 / bb.height + ") \
    //     translate(" + bb.width / 2 + "," + bb.height / 2 + ")");
//   }
//   else{
//     console.log("why in gods name is this null")
//   }
// });
</script>

<template>
    <div id="track-container" class="race-panel">
    <svg id="track-window" viewBox="50,0,100,100" height='200' width='350' xmlns="http://www.w3.org/2000/svg">
            <path id="track"
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




<style scoped lang="scss">
#track-window{
    // width: 100%;
    // height: 100%;
}

#track{
    // width: 100%;
    // height: 100%;
    
}

#track-container{
    height: auto;
    min-width: 43vw;
    height: 80vh;
    /* border-color: white; */
}
</style>