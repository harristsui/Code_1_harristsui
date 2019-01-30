class Paddle { 
  PVector pos;
  PVector pos1;
  float x, y;
  int w, h;

  Paddle(int whichPlayer) {
    w = 25;
    h = 100;
    if (whichPlayer == 1) {
      pos = new PVector(50, height/2 - h/2);
    } else if (whichPlayer == 2) {
      pos1 = new PVector(width-50-w, height/2-h/2);
    }
  }

  void update(boolean up, boolean down) {
    if (up && pos.y > 5) {
      pos.y -= 5;
    }
    if (down && pos.y + h < height - 5) {
      pos.y += 5;
    }
    if (keyPressed && key == 'k') {
      pos.y = pos.y + -(pos.y - ball.pos.y) * 1;
      
    }
  }
  
  void update1(float x, float y) {
    pos1.x = x;
    pos1.y = y;
  }

  void display() {
    rectMode(CORNER);
    rect(pos.x, pos.y, w, h);
  }
  void display1() {
    rectMode(CORNER);
    rect(pos1.x, pos1.y, w, h);
  }
}
