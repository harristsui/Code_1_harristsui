Button button;
NewButton newButton;

void setup() {
  size(300, 300);
  button = new Button(120, 95, 100, 30);
  newButton = new NewButton(120, 195, 100, 30);
  
}

void draw() {
  background(100);
  button.display();
  newButton.display();
  newButton.newCheckPressed();
 
}

void mousePressed() {
  button.checkPressed();
}

class Button {
  boolean pressed;
  float x, y;
  float w, h;
  
  Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void checkPressed() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      pressed = !pressed;
    }
  }
  
  void display() {
    if (pressed) {
      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }
  
  boolean getButtonStatus() {
    return pressed;
  }
}

class NewButton {
  boolean held; 
  float q, w; 
  float e, r;
  
  NewButton (float q, float w, float e, float r) {
    this.q = q;
    this.w = w;
    this.e = e;
    this.r = r;
  }
  void newCheckPressed() {
    if (mouseX > q && mouseX < q + e && mouseY > w && mouseY < w + r && mousePressed) {
      held = true;    
    } else {
      held = false;
    }
  }
  void display() {
    if (held) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(q, w, e, r);
  }
  boolean getButtonStatus() {
    return held;
  } 
  }
  
  
  
  
  
  
  
  
  
  
  
