PImage img;
ArrayList <BBB> bb;


void setup() {
  size(1000,1000);
  img = loadImage("hi.jpg");
  bb = new ArrayList <BBB>();
  noStroke();
}



void draw() {
  for(int i = 0; i < img.width; i++) {
    for(int j =0; j <img.height; j++) {
      bb.add(new BBB (i, j));
    }  
  }
  for(int i = 0; i < bb.size(); i++) {
   BBB b = bb.get(i);
   b.display();
  }
}

class BBB {
  int x, y;
  float p;
  
  BBB (int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
    color c = get(x, y);
    fill(c);
    rect(x, y, 10, 10);
    
  }
  
  
  
  
  
  
}
