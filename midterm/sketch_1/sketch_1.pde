float size = 100;
float incr = 5;

void setup() {
  size(600, 600);
  
}

void draw() {
  background(150);
  ellipse(width/2, height/2, size, size);
    size += incr;
  if (size >= 600) {
    size -= 1200;
  }
    
   
    
}
