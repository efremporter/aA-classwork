Pseudo code for Chess:

BOARD:
1. populate the board in the board class with placeholders. CHECK
- Populate board with actual instances of pieces
2. Pieces need to be aware of where they are on the board and vis versa.
    i.e. figure out a way to get the pieces and board to communicate. 
    This could be via the pos method on the board.
3. In the board class, the board is only concerned whether the space is empty. It's valid to the board
4. SYM: --> :K, :Q, :R, :H, :P, :B


4. check: 
    - analyze who on the opponent's side can MOVE to our king's position. 
    - if no opponent's piece can move to King's position, not check.
        - opponent.piece.bfs = king.position
        - can we get out of it? --> NEED LOGIC HERE. -->  
    - if so, check. 
    - 

5. check_mate:
    analyze each piece on the board.


PIECE
1. valid move for the piece is concerned with how the piece can move and if there is a piece in that position.
2. Piece moves: similar to the board moves. takes a start and end position. just needs to check if it's a valid move
    i.e. check if piece can move in that way and check if there are any pieces IN its path
    AND check if there's a piece in the end_pos.


GAME:
1. 
