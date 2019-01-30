ArrayList<MyClass> myArrayList = new ArrayList<MyClass>();

void setup() {
  size(600, 600);
}

void draw() {
  background(230);
  
  if (frameCount % 30 == 0) {
    myArrayList.add(new MyClass(random(width), random(height)));
  }
  
  for (int i = 0; i < myArrayList.size(); i++) {
    MyClass obj = myArrayList.get(i);
    obj.update();
    obj.display();
  }
  
  for (int i = myArrayList.size() - 1; i >= 0; i--) {
    MyClass obj = myArrayList.get(i);
   if (obj.isTimeUp() == true) {
     myArrayList.remove(i);
   }

  }
}


class MyClass {
  float x; 
  float y;
  float timeRemaining;
  PImage img; 
  
  MyClass(float x, float y) {
    this.x = x;
    this.y = y;
    this.timeRemaining = 180;
    img = loadImage("lorenze.jpg");
  }
  
  void update() {
    timeRemaining--;
  }
  
  void display() {
    //ellipse(x, y, timeRemaining, timeRemaining);
    image(img, x, y, timeRemaining, timeRemaining);
  }
  
  boolean isTimeUp() {
    if (timeRemaining <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
