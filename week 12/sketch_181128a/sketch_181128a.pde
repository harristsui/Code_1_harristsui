float t;
float s;
float k;
void setup() {
  size(800, 800);
  background(0);
}


void draw() {  
  stroke(frameCount%55, frameCount%155, frameCount%255);
  strokeWeight(5);
  point(x(t), y(s) + k + 120);
  t++;
  s++;
  if (t > width) {
    t = 0; 
    k += 220;
  }
}

float x (float t) {
  return t;
}
float y (float s) {
  return sin(s / 2) * 100;
}
