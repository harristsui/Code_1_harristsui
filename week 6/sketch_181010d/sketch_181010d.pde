int gridW = 20;
int gridH = 20;

float[][] angles = new float[gridW][gridH];

void setup() {
  size(800, 800);
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      angles[i][j] = map(i + j, 0, 40, 0, 360);      
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      pushMatrix();
      translate(i * width/gridW +20, j * height/gridH+20);
      rotate(radians(angles[i][j])+ random (0, 5));
      line(-width/gridW*0.5, 0, width/gridW*0.5, 0);
      popMatrix();
    }
  }
}
