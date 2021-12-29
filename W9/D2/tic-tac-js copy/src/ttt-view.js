class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.setupBoard();
    this.bindEvents();
  }

  setupBoard() {
    const ul = document.createElement("UL"); 
    this.el.appendChild(ul); 
    
    for (let i = 0; i < 9; i++) {
      let li = document.createElement('li');
      ul.appendChild(li); 
      let x = 0;
      if (i >= 3 && i < 6) x = 1;
      if (i >= 6) x = 2;
      let y = i % 3;
      li.setAttribute('data-pos', [`${x}`, `${y}`])
      window.li = li;
    }
  }
  
  bindEvents() {
    document.querySelector("ul").addEventListener("click", this.handleClick.bind(this))
    //function that will be invoked in constructor that sets up our event handlers
    //binds events to invocations
  }

  handleClick(e) {
    //call playmove, pass in target of the ele we're clicking 
    //.target is the exact <li> .currentTarget is the 
    //add this method as an event listener to all "li"s
    let target = document.querySelector("li");
    let stringPos = e.target.dataset.pos;
    let x = parseInt(stringPos[0]);
    let y = parseInt(stringPos[2]);
    this.makeMove(e.target);
    this.game.playMove([x, y]);
    if (this.game.isOver()) {
      let player = this.game.currentPlayer;
      if (this.game.currentPlayer === "x") player = "o";
      if (this.game.currentPlayer === "o") player = "x";
      console.log(player + " wins!");
      // this.game.isOver();
    }
  }

  makeMove(square) {
    console.log(this.game.currentPlayer);
    if (this.game.currentPlayer === "x") {
      square.innerText = "X";
    } else {
      square.innerText = "O";
    }
    console.log("hi");
  } 
}

module.exports = View;

//<figure>       this.el
  //<ul>           const ul = document.createElement('ul'); --> this.el.appendChild(ul)
    //<li data-pos="[x, y]"></li>    let li = document.createElement('li'); -->let li = document.createElement('li');
  //</ul>
//</figure>      this.el