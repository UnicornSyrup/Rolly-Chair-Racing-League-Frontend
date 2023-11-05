<script setup>
</script>

<template>
    <div id="leaderboard-container" class="main-component">
        <body id="body">
        <div id="leaderboard-flexbox">
            <div class="box">
            <p>
            John Chair
            </p>
            </div>

            <div class="box">
            <p>
            Nathan Gilbert
            </p>
            </div>

            <div class="box">
            <p>
            Bjorn Fish
            </p>
            </div>
        </div>
        </body>   
    </div>
</template>

<style scoped>
#leaderboard-container{
    height: 80vh;
    width: 15vw;
}

.leaderboard-flexbox {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    text-align: center;
}

.box {
    text-align: center;
    padding: 30px;
}

</style>