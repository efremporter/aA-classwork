console.log("Webpack is working!");
const MovingObject = require("./moving_object.js")
window.MovingObject = MovingObject;
document.addEventListener("DOMContentLoaded", function() {
  const gameCanvas = document.getElementById("game-canvas");
  const canvasContext = gameCanvas.getContext('2d');
  const mo = new MovingObject({
    pos: [30, 30],
    vel: [100, 100],
    radius: 5,
    color: "#00FF00"
  });
  console.log(mo)
  mo.draw(canvasContext);
  mo.move();
  mo.draw(canvasContext);
});