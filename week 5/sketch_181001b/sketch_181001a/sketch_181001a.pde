void setup() {
  size(600, 600);  
}

void draw() {
  background(200);
  fill(255);
  ellipse(width/2, 400, 200, 200);
  
  
  float xPos = map(mouseX, 0, width, width/2 - 50, width/2 + 50);
  float yPos = map (mouseY, 0, height, height/2 + 40, height - 125);
  fill(100);
  ellipse(xPos, yPos, 50, 50);
}
