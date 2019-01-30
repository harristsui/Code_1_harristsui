void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);

  
  for (int i = 0; i <= 19; i++) {
    
    float xPos = map(i, 0, 19, 20, width - 20);
    float yPos = map (i, 0, 19, 55, height - 55);

    rect(xPos, yPos, 20, 100);    
  }
}
