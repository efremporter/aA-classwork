const MovingObject = require("./moving_object");
const Asteroid = require("./asteroid");
const Game = require("./game");
const GameView = require("./game_view");

const mo = new MovingObject({
  pos: [30, 30],
  vel: [10, 10],
  radius: 5,
  color: "blue"
});

let a = new Asteroid({ pos: [0, 90] });
let game = new Game()
let ast = game.addAsteroids()

document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("game-canvas");
  canvas.height = 500;
  canvas.width = 1000;
  const ctx = canvas.getContext("2d");
  const gameOne = new GameView(ctx);
  gameOne.start();
})



window.MovingObject = MovingObject;
window.Asteroid = Asteroid;

// console.log("Webpack is working!");

