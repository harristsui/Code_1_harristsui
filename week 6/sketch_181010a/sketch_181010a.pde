int num = 10;
float[] x = new float[num];
float[] y = new float[num];
float[] dx = new float[num];
float[] dy = new float[num];
float[] size = new float [num];
float[] ss = new float [num];


void setup() {
  size(800, 800);
  for (int i = 0; i < x.length; i++) {
    size[i] = 20;
    ss[i] = random (-10, 20);
    x[i] = width/2;
    y[i] = height/2;
    dx[i] = random(-10, 10);
    dy[i] = random(-10, 10);
  }
}

void draw() {
  background(200);


  for (int i = 0; i < x.length; i++) {
    float s;
    s = size[i] + ss [i];
    println (s);
    fill(20);
    ellipse(x[i], y[i], s, s);
    x[i] += dx[i];
    y[i] += dy[i];

    if (x[i] > width-s/2 || x[i] < s/2) {
      dx[i] = -dx[i];
    }
    if (y[i] > height-s/2 || y[i] < s/2) {
      dy[i] = -dy[i];
    }
  }
}
