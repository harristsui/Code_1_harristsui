int num = 100;
float[] pos = new float[num];

void setup() {
  size(600, 600);
  for (int i = 0; i < 100; i ++) {
    pos[i] = map(i, 0, 100, 0, height);
  }
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
