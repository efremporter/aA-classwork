function MovingObject(args){
  this.pos = args["pos"];
  this.vel = args["vel"];
  this.radius = args["radius"];
  this.color = args["color"];
}

MovingObject.prototype.draw = function(ctx) {
  ctx.beginPath();
  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI);
  ctx.fillStyle = this.color;
  ctx.fill();
}

MovingObject.prototype.move = function() {
  this.pos[0] += this.vel[0];
  this.pos[1] += this.vel[1];
}

MovingObject.prototype.isCollidedWith = function(otherObject){
  let total = this.radius + otherObject.radius;
  let distance = Math.sqrt((this.pos[0] - otherObject.pos[0])**2 + (this.pos[1] - otherObject.pos[1])**2);
  if (total > distance) {
    return true
  };
  return false;
}

module.exports = MovingObject;
