int gridW = 10;
int gridH = 10;


boolean[][] isRed = new boolean[gridW][gridH];
float[][] size = new float[gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {    
      if (i >= gridW/2) {
        size[i][j] = random (0, 15);
        isRed[i][j] = true;
      } else {
        size[i][j] = random (10, 25);
        isRed[i][j] = false;
      }
    }
  }
}

void draw() {
  float s;
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {      
     
      if (isRed[i][j] == true) {
        fill(200, 0, 0);
         s = size[i][j];
      } else {
        fill(200, 200, 200);
         s = size[i][j]*3;
      }     
      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;
      
      ellipse(xPos, yPos, s, s);
    }
  }
}
