<script setup>
const props =defineProps({
 players : Array,
})
</script>

<template>
    <div id="leaderboard-container" class="race-panel">
        <!-- <body id="body"> -->
        <div  id="leaderboard-flexbox" >
            <div v-for="(player, index) in players" class="box" :style="'background-color:' + player.color">
                <p>
               <!-- <b style="font-size: 1.2rem;">{{ index+1 }}.  </b> -->
                {{ player.name }}
                </p>
            </div>
        </div>
        <!-- </body>    -->
    </div>
</template>

<style scoped lang="scss">
#leaderboard-container{
    height: 80vh;
    width: 25vw;
    overflow-y: auto;

}

// #leaderboard-flexbox {
//     display: flex;
//     flex-direction: column;
//     justify-content: space-around;
//     text-align: center;
// }

.box {
    text-align: center;
    padding: .25rem;
    // background: darkslateblue;
    width: auto;
    border-radius: 25px;
    margin: auto;
    margin-bottom: .5rem;
    font-size: 1rem;
    color: white;
    p{
        text-shadow: 1px 1px #000000;
        word-wrap: break-word;
    }
}

// .leaderboard-flexbox :nth-child(1) { order: 2; }
// .leaderboard-flexbox :nth-child(2) { order: 3; }
// .leaderboard-flexbox :nth-child(3) { order: 1; }

</style>