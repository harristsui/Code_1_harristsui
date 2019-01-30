/*
this sketch draws a repeatedly growing and shrinking ellipse.
your task is to change the program so that this behavior is
encapsulated inside a class. 

move all this behavior to a class, then have mouse clicks create
instances of the class on the screen. use an ArrayList to store
the instances of the class that you create, and update and display
all of them in the draw() loop. 
*/ 

Pressed one;
Pressed two;
ArrayList<Pressed> bb;

void setup() {
  size(600, 600);
  bb = new ArrayList<Pressed>();
  one = new Pressed(250, 100, 0);
  two = new Pressed(400, 300, 20);

}

void draw() {
  bb.add(new Pressed (250, 100, 0));
  
  background(255);
  if(mousePressed) {
    one.display();
    one.update();
    two.display();
    two.update();
  }
}



class Pressed {
  float x;
  float y;
  float d;
  float incr = 2;
  float maxSize = 150;
  
  Pressed(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.incr = incr;
    this.maxSize = maxSize;
  }
    void display() {
      ellipse(x, y, d, d);
    }
    void update() {
       if (d > maxSize || d < 0) {
       incr = -incr;
    }
       d += incr;
      
    }
  
  }
  
  
  ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(600, 600);
  
}

void draw() {
  background(150);
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    c.update();
    c.display();
  }
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY));
}

class Circle {
  float x;
  float y;
  float d;
  float incr;
  float maxSize;

  Circle(float x, float y) {
    this.x = x;
    this.y = y;
    this.d = 0;
    this.incr = 2;
    this.maxSize = 150;
  }

  void update() {
    if (d > maxSize || d < 0) {
      incr = -incr;
    }
    d += incr;
  }

  void display() {
    ellipse(x, y, d, d);
  }
}
  
  
