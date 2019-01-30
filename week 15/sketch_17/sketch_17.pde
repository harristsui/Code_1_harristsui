/*
  try to reproduce the 'twinkling stars' effect in the gif.
  you should use the Star class in order to do this.
  think of the starry sky as a group of star objects that 
  change color over time.

  if you can't reproduce it exactly, come as close as you can.
*/


ArrayList<Star> stars;

void setup() {
  size(600, 600);
  stars = new ArrayList <Star>();
  for(int i = 0; i < width; i++) {
    stars.add (new Star(random(width), random(height)));
  }
}
  


void draw() {
  background(0);
  for(int i = 0; i < stars.size(); i++) {
    Star s = stars.get(i);
    s.display();
  }
}

class Star {
  float x, y;
  float c = 0;
  float incr = 1;
  
  Star(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
    fill(c += incr);
    if(c >= 255 || c <= 0) {
      incr = -incr;
    }
    ellipse(x, y, 5, 5);   
  }  
}
