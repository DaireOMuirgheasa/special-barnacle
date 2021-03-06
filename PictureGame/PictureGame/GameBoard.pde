class GameBoard {
  int boardWidth;
  int boardHeight;
  int boardCenterX;
  int boardCenterY;
  int rows;
  int columns;
  ArrayList<SnapPoint> snapPoints = new ArrayList<SnapPoint>();

  GameBoard (int _boardCenterX, int _boardCenterY, int _boardWidth, int _boardHeight, int _rows, int _columns) {
    boardCenterX = _boardCenterX;
    boardCenterY = _boardCenterY;
    boardWidth = _boardWidth;
    boardHeight = _boardHeight; 
    rows = _rows;
    columns = _columns;
    createSnapPoints();
  }


  void run() {
    display();
  }

  void createSnapPoints() {
    int count = 0;
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        snapPoints.add(new SnapPoint(boardCenterX + (i*boardWidth/3), boardCenterY + (j*boardHeight/3), count ) );
        count++;
      }
    }
  }
  

  void display() {
    rectMode(CENTER);
    fill(0);
    stroke(255);
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        rect(boardCenterX + (i*boardWidth/3), boardCenterY + (j*boardHeight/3), boardWidth/rows, boardHeight/columns);
      }
    }
  }
}