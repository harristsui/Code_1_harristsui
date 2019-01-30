ArrayList<Rect> rectArray = new ArrayList<Rect>();
Rect shape1;

void setup() {
  size(500,500);
  for (int i = 0; i < 10; i++){
    rectArray.add (new Rect (random (450), random(450)));    
  }

}

void draw() { 
  background(0);
  for (int i = 0; i< rectArray.size(); i++) {
    Rect shape1 = rectArray.get(i);  
    shape1.display();
    shape1.update();    
  }
  
}

class Rect {
  float x;
  float y;
  float dx;
  float dy;
  float size;
  int z;

  Rect(float x, float y) {
    this.x = x;
    this.y = y;
    this.size= 50;
    this.dx = 2;
    this.dy = 2;
  }
  
  void display(){
    stroke(255);
    fill(0,255,0); 
    rect(x, y, size, size);
}
  
  void update(){
    this.x += this.dx;
    this.y += this.dy;
    if (this.x > width - size || this.x < 0) {
      this.dx *= -1;
    }
    if (this.y > height - size || this.y < 0) {
      this.dy *= -1;
    }
  }
  
}
