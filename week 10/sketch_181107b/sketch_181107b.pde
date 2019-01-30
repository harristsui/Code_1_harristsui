Brushstroke b;

void setup() {
  size(600, 600);
  noStroke();
  background(255);
}

void draw() {
  if (mousePressed) {
    if (frameCount % 5 == 0) {
      b = new Brushstroke(mouseX, mouseY, color(map(mouseX, 0, 600, 0, 255), map(mouseY,0, 600, 0, 255)));
    }

    if (b != null) {
      b.update();
      b.display();
    }
  }
}


class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
  color c;

  Brushstroke(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    //c = color (random(255), random(255), random(255));
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(30, 60);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display() {
    noStroke();
    fill(255);
    //stroke(0);
    fill(c);
    ellipse(x, y, siz, siz);
  }
}
