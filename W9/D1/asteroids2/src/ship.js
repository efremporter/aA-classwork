const { default: moduleTransformations } = require("@babel/preset-env/lib/module-transformations");
const reactDom = require("react-dom");
const MovingObject = require("./moving_object");
const Util = require("./util");

function Ship(pos) {
  let ship = {
    pos: pos["pos"],
    vel: [0, 0],
    radius: 10,
    color: "red"
  }
  MovingObject.call(this, ship);
}

Util.inherits(Ship, MovingObject);

module.exports = Ship;