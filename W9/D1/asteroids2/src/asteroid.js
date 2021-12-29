const MovingObject = require("./moving_object");
const Util = require("./util");

function Asteroid(pos) {
  let ast = {
    pos: pos["pos"],
    vel: Util.randomVec(5),
    radius: 15,
    color: "grey"
  }
  MovingObject.call(this, ast)
}
Util.inherits(Asteroid, MovingObject);


module.exports = Asteroid;