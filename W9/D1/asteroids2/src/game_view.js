// const { default: moduleTransformations } = require("@babel/preset-env/lib/module-transformations");
const Game = require("./game");

function GameView(ctx) {
  this.game = new Game();
  this.ctx = ctx;
}

GameView.prototype.start = function() {
  setInterval(() => {
    this.game.draw(this.ctx);
    this.game.step();
    this.game.asteroids.forEach( (asteroid) => {
      asteroid["pos"] = this.game.wrap(asteroid["pos"]);
    })
  }, 20);
}

module.exports = GameView;