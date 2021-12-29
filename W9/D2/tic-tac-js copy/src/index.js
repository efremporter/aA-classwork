const View = require("./ttt-view")
const Game = require('../ttt_node/game')

document.addEventListener("DOMContentLoaded", () => {
  const root = document.querySelector(".ttt")
  const game1 = new Game();
  const view1 = new View(game1, root);
});
