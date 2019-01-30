/* 
 the program below draws three circles whose oscillation 
 is slightly off from one another. 
 
 instead of drawing the circles one by one, create a loop 
 that will draw 30 circles to the canvas to create the 
 wave pattern as shown in the example gif. use the iteration
 variable (e.g. 'i') from your loop to adjust the beginning 
 angle of each circle and space them out over the x-axis. 
 finally, adjust the amplitude so that the wave goes from 
 the top of the canvas to the bottom.
 */

float angle = 0.0;
float offset;
float amplitude = 260;
float speed = 0.05;
float incr;

void setup() {
  size(600, 600);
  offset = height/2;
  frameRate(30);
}

void draw() {
  background(0);
  for (int i = 0; i < 30; i++) {
    incr += 0.4;
    float y = offset + sin(angle + incr) * amplitude;
    ellipse(map(i, 0, 30, 0, width), y, 20, 20);
  }
  angle += speed;
}
