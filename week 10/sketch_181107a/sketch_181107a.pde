int i = 0; 
color[] myList = new color[4];
void setup() {
  //c0 = color(255, 0, 0);
  //c1 = color(0, 0, 0);
  //c2 = color(111, 45, 234);
  //c3 = color(23, 43, 111);
  //random numbers
  for(int i = 0; i < myList.length; i++) {
    myList[i] = color (random(255), random (255), random (255));
    
  }
}

void draw() {
  i = (i + 1) % 4;
  background(myList[i]);
  }
