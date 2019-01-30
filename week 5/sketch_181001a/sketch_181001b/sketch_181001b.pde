void setup() {
  size(600, 600);  
}

void draw() {
  float bgcolor = map(mouseX, 0, width, 0, 255);
  float bgcolor1 = map(mouseY, 0, height, 0, 255);
  background(0, bgcolor1,bgcolor);
}
