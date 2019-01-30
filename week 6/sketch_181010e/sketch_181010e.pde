int gridW = 10;
int gridH = 10;
float[][] xPositions = new float[gridW][gridH];
float[][] yPositions = new float[gridW][gridH];
float[][] dx = new float[gridW][gridH];
float[][] dy = new float[gridW][gridH];

void setup() {
  size(800, 800);
  //noStroke();

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      xPositions[i][j] = 400;
      yPositions[i][j] = 400;
      dx[i][j]  = random (0, 3);
      dy[i][j]  = random (0, 3);
    }
  }
}

void draw() {
  background(20);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      float s = 15;
      xPositions[i][j] += dx[i][j];
      yPositions[i][j] += dy[i][j];
      ellipse(xPositions[i][j], yPositions[i][j], s, s);  
      if (xPositions[i][j] > width - s/2 || xPositions[i][j] < s/2) {
        dx[i][j] = -dx[i][j];
      }
      if (yPositions[i][j] > height - s/2 || yPositions[i][j] < s/2) {
        dy[i][j] = -dy[i][j];
      }
    }
  }
}
