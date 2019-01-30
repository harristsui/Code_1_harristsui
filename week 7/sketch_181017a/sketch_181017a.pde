Cookie shape1;
Cookie c;
ArrayList<Cookie> cookieJar;

void setup() {
  shape1 = new Cookie(width/2, height/2, 50);
  size(500,500);
  cookieJar = new ArrayList <Cookie>();

}

void draw() {
  background (0);
  shape1.returnSize();
  for (int i = 0; i < cookieJar.size(); i++) {
    Cookie c = cookieJar.get(i);
    c.returnSize();    
  }
}

void mousePressed() {
  cookieJar.add(new Cookie (mouseX, mouseY, 50));
  
}

class Cookie {
  String kind;
  String size;
  int x;
  int y;
  int shapeSize;
  
  Cookie(String whatKind, String whatSize) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
  }
  
  
  void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }
  
  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }
  
  String getSize() {
    return size;
  }

  Cookie (int whatX, int whatY, int whatShapeSize) {
  x = whatX;
  y = whatY;
  shapeSize = whatShapeSize;    
  }
  void returnSize() {
    ellipse (x, y, shapeSize, shapeSize);
    
  }

  
}
