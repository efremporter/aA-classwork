const MovingObject = require("./moving_object");
const Util = require("./util")

function Asteroid(args) {
  MovingObject.call(this, args)
}
Util.inherits(Asteroid, MovingObject);
module.exports = Asteroid;