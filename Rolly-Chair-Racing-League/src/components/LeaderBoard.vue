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
    background: darkslateblue;
    border-radius: 25px;
    margin: 15px;
    font-size: 20px;
    color: white;
}

.leaderboard-flexbox :nth-child(1) { order: 2; }
.leaderboard-flexbox :nth-child(2) { order: 3; }
.leaderboard-flexbox :nth-child(3) { order: 1; }

</style>