float bgColor = 0;
boolean on = false;

void setup() {
  size(600, 600);
}

void draw() {
  background(bgColor);
  
  //if (on) {
  //  bgColor = 255;
  //} else {
  //  bgColor = 0;
  //}
}

void mouseReleased() {
  if (bgColor == 0) {
    bgColor = 255;
  } else {
    bgColor = 0;
  }
 
}
