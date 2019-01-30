void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  if (mousePressed) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 100 && mouseY < height/2 +100) {
    fill(255);
    }
   } else {
    fill(150);
  }
  
  
  ellipse(width/2, height/2, 200, 200);
}
