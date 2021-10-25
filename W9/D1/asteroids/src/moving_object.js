module.exports = MovingObject;

function MovingObject(args) {
  this.pos = args['pos'];
  this.vel = args['vel'];
  this.radius = args['radius'];
  this.color = args['color'];
}

MovingObject.prototype.draw = function(ctx) {
  ctx.fillStyle = this.color;
  ctx.beginPath(); //tells canvas that next set of commands are for drawing an object
  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI) //makes circle
  ctx.fill();
}

MovingObject.prototype.move = function () {
  this.pos[0] += this.vel[0]
  this.pos[1] += this.vel[1]
}

