float[] xPositions = new float[50];
float[] yPositions = new float[50];

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(0, width);
    yPositions[i] = random(0, height);
  }
}

void draw() {
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] += 2;
    yPositions[i] += 2;
    fill(random(0, 125));
    noStroke();
    //translate(width,height);
    //rotate(radians(PI/2));
    rect(xPositions[i], yPositions[i], 30, 30);  
    
  }
  
}
