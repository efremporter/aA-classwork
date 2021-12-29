const Asteroid = require("./asteroid");
const Ship = require("./ship");

function Game(){
  this.DIM_X = 1000;
  this.DIM_Y = 500;
  this.NUM_ASTEROIDS = 20;
  this.asteroids = [];
  this.addAsteroids();
  this.ship = new Ship({pos: this.randomPosition()});
}

Game.prototype.addAsteroids = function() {
  for (let i = 0; i < this.NUM_ASTEROIDS; i++) {
    let x = Math.floor(Math.random() * this.DIM_X);
    let y = Math.floor(Math.random() * this.DIM_Y);
    this.asteroids.push(new Asteroid({ pos: [x, y] }));
  }
  return this.asteroids;
}

Game.prototype.draw = function(ctx){
  ctx.clearRect(0, 0, 1000, 500);
  this.allObjects().forEach( (obj) => {obj.draw(ctx)});
}

Game.prototype.moveObjects = function() {
  this.allObjects().forEach( (obj) => {obj.move()})
}

Game.prototype.wrap = function(pos) {
  
  if (pos[0] > this.DIM_X) {
    return [0, pos[1]];
  } else if (pos[0] < 0) {
    return [1000, pos[1]];
  } 

  if (pos[1] > this.DIM_Y) {
    return [pos[0], 0];
  } else if (pos[1] < 0) {
    return [pos[0], 500];
  }
  return pos;
}

Game.prototype.checkCollisions = function () {
  for (let i = 0; i < this.allObjects().length; i++) {
    for (let j = 0; j < this.allObjects().length; j++) {
      if (i !== j && this.allObjects()[i].isCollidedWith(this.allObjects()[j])) {
        console.log("g");
        this.remove(this.allObjects()[i]);
        this.remove(this.allObjects()[j]);
      };
    }
  }
}

Game.prototype.step = function () {
  this.moveObjects();
  this.checkCollisions();
}

Game.prototype.remove = function (asteroid) {
  console.log("removed");
  let index = this.asteroids.indexOf(asteroid);
  this.asteroids.splice(index, 1);
}

Game.prototype.randomPosition = function() {
  let x = Math.floor((Math.random() * 800) + 100);
  let y = Math.floor((Math.random() * 350) + 100);
  return [x, y];
}

Game.prototype.allObjects = function() {
  return [this.ship].concat(this.asteroids);
}

module.exports = Game;