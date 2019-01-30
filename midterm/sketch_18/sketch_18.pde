int gridW = 10;
int gridH = 10;
float[][] greyColors = new float[gridW][gridH];
float[][] square1 = new float[gridW][gridH];
float[][] square2 = new float[gridW][gridH];

void setup() {
  size(600, 600);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
      square1[i][j] = map(i, 0, 10, 0, width);
      square2[i][j] = map(j, 0, 10, 0, height);
    }
  }
}

void draw() {
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
      if (greyColors[i][j] >= 255) {
         greyColors[i][j] = 0;
      }
      rect(square1[i][j], square2[i][j], width/gridW, height/gridH);
      
    }
  }
}
