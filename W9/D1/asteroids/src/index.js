console.log("Webpack is working!");
const MovingObject = require("./moving_object.js")
window.MovingObject = MovingObject;
document.addEventListener("DOMContentLoaded", function() {
  const gameCanvas = document.getElementById("game-canvas");
  gameCanvas.getContext('2d');
  gameCanvas.height = "500"
})