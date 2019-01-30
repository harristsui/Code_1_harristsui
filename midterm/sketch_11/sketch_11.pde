void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i < 10; i++) {
    float xPos = map(i, 0, 10, 30, width - 30);
    rect(xPos, 150, 30, 300);
    //x += 60;
  }
}
