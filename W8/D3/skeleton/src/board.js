// DON'T TOUCH THIS CODE
if (typeof window === 'undefined'){
  var Piece = require("./piece");
}
// DON'T TOUCH THIS CODE

/**
 * Returns a 2D array (8 by 8) with two black pieces at [3, 4] and [4, 3]
 * and two white pieces at [3, 3] and [4, 4]
 */
function _makeGrid () {
  let grid = new Array();
  for (let i = 0; i < 8; i++) {
    grid.push([]);
  }
  grid.forEach( (row) => {
    for (let i = 0; i < 8; i++) {
      row.push(undefined);
    }
  })
  grid[3][4] = new Piece("black");
  grid[4][3] = new Piece("black");
  grid[3][3] = new Piece("white");
  grid[4][4] = new Piece("white");
  return grid;
}

/**
 * Constructs a Board with a starting grid set up.
 */
function Board () {
  this.grid = _makeGrid();
}

Board.DIRS = [
  [ 0,  1], [ 1,  1], [ 1,  0],
  [ 1, -1], [ 0, -1], [-1, -1],
  [-1,  0], [-1,  1]
];

/**
 * Checks if a given position is on the Board.
 */
Board.prototype.isValidPos = function (pos) {
  if (pos[0] > 7 || pos[1] > 7 || pos[0] < 0 || pos[1] < 0) return false;
  return true;
};

/**
 * Returns the piece at a given [x, y] position,
 * throwing an Error if the position is invalid.
 */
Board.prototype.getPiece = function (pos) {
  if (this.isValidPos(pos) && this.isOccupied(pos)) {
    return this.grid[pos[0]][pos[1]];
  } else if (this.isValidPos(pos) && !this.isOccupied(pos)) {
    return undefined;
  }
  throw new Error('Not valid pos!');
};

/**
 * Checks if the piece at a given position
 * matches a given color.
 */
Board.prototype.isMine = function (pos, color) {
  if (this.isValidPos(pos) && this.isOccupied(pos)) {
    if (this.getPiece(pos).color === color) return true;
  }
  return false;
};

/**
 * Checks if a given position has a piece on it.
 */
Board.prototype.isOccupied = function (pos) {
  if (this.isValidPos(pos)) {
    if (this.grid[pos[0]][pos[1]] !== undefined) {
      return true;
    }
    return false;
  }
};

/**
 * Recursively follows a direction away from a starting position, adding each
 * piece of the opposite color until hitting another piece of the current color.
 * It then returns an array of all pieces between the starting position and
 * ending position.
 *
 * Returns an empty array if it reaches the end of the board before finding another piece
 * of the same color.
 *
 * Returns empty array if it hits an empty position.
 *
 * Returns empty array if no pieces of the opposite color are found.
 */
Board.prototype._positionsToFlip = function(pos, color, dir, piecesToFlip){
  //if we put a piece down, which position will we need to flip
  // if (pos[0] > 7 || pos[1] > 7 || pos[0] < 0 || pos[1] < 0) return [];
  console.log("HELLO")
  if (!this.isOccupied([pos[0], pos[1]])) return [];
  console.log("HELLO")
  if (this.grid[pos[0]][pos[1]].color !== color) return [];
  console.log("HELLO")
  if (piecesToFlip) {
    piecesToFlip.push(pos);
  } else {
    piecesToFlip = [];
  }
  let x = pos[0] + dir[0];
  let y = pos[1] + dir[1];
  let newPos = [x, y]
  // console.log(piecesToFlip)
  return piecesToFlip.concat(this._positionsToFlip(newPos, color, dir, piecesToFlip))

};

/**
 * Checks that a position is not already occupied and that the color
 * taking the position will result in some pieces of the opposite
 * color being flipped.
 */
Board.prototype.validMove = function (pos, color) {
  if (this.isOccupied(pos)) return false;
  
  Board.DIRS.forEach( (direction) => {
    let x = pos[0] + direction[0];
    let y = pos[1] + direction[1];
    console.log(pos[1] + direction[1]);
    
    if (this.isOccupied([x, y])) {
      if (this.grid[x][y].color !== color) {
        console.log(this.grid[x][y].color);
        console.log(color);
        return true;
        console.log("HELLO")
      }
    }
    
  })
  return false;
};

// it('should return true for a valid move', function () {
//   expect(testBoard.validMove([2, 3], "black")).toEqual(true);
// });

// Board.DIRS = [
//   [ 0,  1], [ 1,  1], [ 1,  0],
//   [ 1, -1], [ 0, -1], [-1, -1],
//   [-1,  0], [-1,  1]
// ];

/**
 * Adds a new piece of the given color to the given position, flipping the
 * color of any pieces that are eligible for flipping.
 *
 * Throws an error if the position represents an invalid move.
 */
Board.prototype.placePiece = function (pos, color) {
};

/**
 * Produces an array of all valid positions on
 * the Board for a given color.
 */
Board.prototype.validMoves = function (color) {
};

/**
 * Checks if there are any valid moves for the given color.
 */
Board.prototype.hasMove = function (color) {
};



/**
 * Checks if both the white player and
 * the black player are out of moves.
 */
Board.prototype.isOver = function () {
};




/**
 * Prints a string representation of the Board to the console.
 */
Board.prototype.print = function () {
};


// DON'T TOUCH THIS CODE
if (typeof window === 'undefined'){
  module.exports = Board;
}
// DON'T TOUCH THIS CODE