<script setup>
import Track from './Track.vue';
import Log from "./Log.vue"
import LeaderBoard from "./LeaderBoard.vue"
import {ref} from "vue"
</script>



<script>
const DURATION = 50;

const scaledTimes = [...new Array(100)].map((v, i) => {return i / 100});

import * as Realm from "realm-web";

// Add your App ID
const app = new Realm.App({ id: 'data-eetjq' });

async function loginApiKey(apiKey) {
  // Create an API Key credential
  const credentials = Realm.Credentials.apiKey(apiKey);
  // Authenticate the user
  const user = await app.logIn(credentials);
  return user;
}

let tracks = [
    "m 52.366795,79.888019 c -1.65637,-16.296223 -0.254826,-35.075644 10e-7,-52.749024 0,0 1.146717,-26.37452025 -25.61004,-25.2278003 C -1.3513514e-7,3.0579147 1.5289579,19.876445 1.1467169,25.610035 c -0.38223804,5.73359 9.9234661,37.76819 59.2471081,27.90347 28.66795,-5.73358 36.41079,11.48283 36.69498,18.72973 0.76448,19.49421 -32.108114,36.694975 -44.72201,7.644784 zm 91.737451,227.81466 0.76448,-55.4247 c 0,0 1.146717,-26.37452 -25.61004,-25.2278 -26.756756,1.14672 -25.227798,17.96525 -25.610039,23.69884 -0.382238,5.73359 9.923466,37.76819 59.247108,27.90347 28.66795,-5.73358 36.41079,11.48283 36.69498,18.72973 0.76448,19.49421 -28.28572,44.72201 -45.486489,10.32046 z",
    "M20,50 C20,-50 180,150 180,50 C180-50 20,150 20,50 z",
    "m 64.342176,41.329281 c -12.973174,6.050262 -25.246694,14.621685 -32.779531,26.794002 -3.766418,6.086159 -6.266268,13.008073 -6.834552,20.142797 -0.568284,7.134724 0.844889,14.47541 4.390263,20.69293 4.414316,7.74138 11.90052,13.40214 20.075409,16.94988 8.174889,3.54773 17.056488,5.14508 25.90204,6.22741 8.845551,1.08233 17.763219,1.68008 26.515275,3.35841 8.75205,1.67833 17.43393,4.50345 24.72502,9.62743 9.30852,6.54177 15.89325,16.66054 18.76854,27.66854 2.87529,11.008 2.13934,22.82976 -1.42367,33.63477 -3.56301,10.80502 -9.87949,20.60717 -17.7492,28.82368 -7.86971,8.21651 -17.26831,14.8831 -27.305077,20.24097 -8.89681,4.74933 -18.45047,8.53155 -28.465281,9.72021 -10.014812,1.18866 -20.557238,-0.37219 -29.148477,-5.65423 -4.295619,-2.64102 -8.054642,-6.18724 -10.790267,-10.42324 -2.735625,-4.236 -4.429864,-9.16538 -4.696952,-14.20086 -0.267087,-5.03547 0.916161,-10.16443 3.516204,-14.48497 2.600043,-4.32055 6.628833,-7.79717 11.348059,-9.57375 3.635121,-1.36846 7.60663,-1.72445 11.472176,-1.34452 3.865546,0.37994 7.634786,1.47804 11.23588,2.93369 7.202189,2.9113 13.744926,7.23063 20.770258,10.54603 7.025333,3.3154 14.900484,5.64112 22.529507,4.17648 3.81451,-0.73232 7.48148,-2.43756 10.28949,-5.12119 2.808,-2.68364 4.70732,-6.37474 4.9523,-10.25118 0.19633,-3.10665 -0.66624,-6.2449 -2.27223,-8.91147 -1.60599,-2.66658 -3.93403,-4.86811 -6.59618,-6.48143 -5.3243,-3.22665 -11.80192,-4.06131 -18.016814,-3.6946 -6.214894,0.3667 -12.300845,1.84931 -18.428832,2.94801 -6.127988,1.0987 -12.444126,1.81325 -18.558471,0.64101 -6.500212,-1.24622 -12.547603,-4.65118 -17.081423,-9.47303 -4.53382,-4.82186 -7.549056,-11.02653 -8.670402,-17.54945 -1.121345,-6.52291 -0.362145,-13.34053 2.042057,-19.50702 2.404203,-6.1665 6.434204,-11.67318 11.498845,-15.93408 7.348947,-6.18269 16.655533,-9.64261 26.072902,-11.52565 9.417368,-1.88304 19.055442,-2.29512 28.628838,-3.05849 9.5734,-0.76337 19.22086,-1.90613 28.25522,-5.16387 9.03437,-3.25774 17.5004,-8.81966 22.7145,-16.884758 3.15281,-4.87672 5.03018,-10.55211 5.53818,-16.336965 0.508,-5.784856 -0.34273,-11.670493 -2.34468,-17.12162 -4.00392,-10.902255 -12.58812,-19.851444 -22.88975,-25.214921 -10.30163,-5.363477 -22.20793,-7.278131 -33.792312,-6.445962 -11.584384,0.832169 -22.87103,4.322105 -33.396862,9.231007 z",

]

const user = await loginApiKey("rS6YEkfv9oSL0xWR7eK8kUG6CpiIBN3YYQrscvsyyxC3e8pTYU13MhD0nzxnOE7Z"); // add previously generated API key
const mongo = app.currentUser.mongoClient("Cluster0");
const collection = mongo.db("Cluster0").collection("races");
var players = ref([]);


const loadRace = async function (){
    players.value = [];
    const race = await collection.findOne();
    console.log(race);
    console.log(scaledTimes);

    let maxDist = Math.max(...race.timesteps[race.timesteps.length - 1].positions);
    console.log(maxDist)


    race.players.forEach(player => {
        let playerObj = {};
        let id = player.id || 0;

        console.log(id)

        playerObj.name = player.name || null;
        playerObj.times = scaledTimes;
        let distances = [];
        race.timesteps.forEach(time => {
            distances.push(time.positions[id] / maxDist)
        })
        console.log(distances);
        playerObj.distances = distances;
        playerObj.color = "#" + Math.floor(Math.random()*16777215).toString(16);

        players.value.push(playerObj);
    });
}
loadRace();
setInterval(loadRace, 60000);


// var i = 0;

// setInterval(() => {
//     // let t = race.timesteps[i].positions.map((p, j) => {return {"position": p, "id": j}});
//     // t.sort((e) => {return e.position})

//     // let newPlayers = [];

//     // t.forEach((a) => {
//     //     newPlayers.push(players.find((b) => {b.id == a.id}))
//     // })

//     // players = newPlayers;

//     let t = race.timesteps[i].positions.map((p, j) => {return {"position": p, "id": j}});
//     t.sort((e) => {return e.position})

//     let newPlayers = [];

//     t.forEach((a) => {
//         newPlayers.push(players.value.find((b) => {b?.id == a?.id}))
//     })

//     players.value = newPlayers;

//     i++;
// }, DURATION * 10)


// let players = [{
//     name: "joel bargiglio00000000000000",
//     times: [0, .2, .5, 1],
//     distances: [0, .6, .7, 1],
//     color:"#ffff00"
// },
// {
//     name: "j90l bidon",
//     times: [0, .2, .5, 1],
//     distances: [0, .1, .65, 1],
//     color:"#00FF00"

// }
// ]


</script>


<template>
    <div id="race-container">
        <Track :players="players" :track="tracks[2]"></Track>
        <div id="donors">
            <h3>Thank you to all of our donors:</h3>
            <p>Joshua Holland</p>
        <p>mishal</p>
        <p>Jasper fam</p>
        <p>John Fish (Creator of Fish)</p>
        <p>brianna</p>
        <p>woofles</p>

        <p>Michael Serrano</p>
        </div>

        <LeaderBoard :players="players"></LeaderBoard>
        <!-- <Log></Log> -->
    </div>
</template>

<style scoped lang="scss">
 #race-container{
    display: flex;
    flex-direction: row;
    justify-content:space-between;
} 
// .race-panel {
//   background-color: #232323;
//   border: 10px solid black;
//   padding: 20px;
// }
#donors{
    display: flex;
    flex-direction: column;
    // justify-content: space-between;
    p{
        color: white;
        margin-top:1rem;
    }
}
</style>

<style>

.race-panel {
  background-color: #232323;
  border: 10px solid black;
  padding: 20px;
}

</style>