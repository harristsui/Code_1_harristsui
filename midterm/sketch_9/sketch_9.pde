void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(50);
  translate(width/2, height/2);
  rotate(map(mouseX, 0, 600, 0, 6.3));
  triangle(0, -100, 50, 100, -50, 100);
}
