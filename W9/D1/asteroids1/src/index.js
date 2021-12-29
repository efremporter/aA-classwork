console.log("Webpack is working!");
const Asteroid = require("./asteroid.js");
window.Asteroid = Asteroid;
const Util = require("./util.js");
window.Util = Util;
const MovingObject = require("./moving_object.js")
window.MovingObject = MovingObject;
document.addEventListener("DOMContentLoaded", function() {
  const gameCanvas = document.getElementById("game-canvas");
  const canvasContext = gameCanvas.getContext('2d');
  gameCanvas.height = "1000"
  gameCanvas.width = "2000"
  canvasContext.fillStyle = "black"
  canvasContext.fillRect(0,0, 1000, 500)
  const mo = new MovingObject({
    pos: [30, 30],
    vel: [100, 120],
    radius: 5,
    color: "#00FF00"
  });
  const a = new Asteroid({
    pos: [0, 40],
    vel: [10, 120],
    radius: 7,
    color: "blue"
  });
  console.log(mo)
  mo.draw(canvasContext);
  mo.move();
  mo.draw(canvasContext);
  debugger;
  a.draw(canvasContext);
  a.move();
  a.draw(canvasContext);
});