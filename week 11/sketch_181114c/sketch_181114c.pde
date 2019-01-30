int lHeight = 38;
int sHeight = 18;
int shapeHeight = 38;
int shapeWidth = 18;
int x = 0; 
int y = 0;
boolean letterBoolean;
boolean mouseBoolean;
color[] colorArray = new color [10];

void setup() {
  size(800,800);
  noStroke();
  colorMode(HSB, 10);
  background(10);
  for(int i = 0; i < colorArray.length; i++) {
    colorArray[i] = color (i, 10, 10);
  }
}



void draw() {
  if (letterBoolean == true) {
    if(shapeHeight == lHeight) {
      rect(x, y, shapeWidth, shapeHeight);
    } else if (shapeHeight == sHeight) {
      rect(x, y, shapeWidth, shapeHeight);
    }
    letterBoolean = false;
  }
  if(mouseBoolean == true) {
    if(shapeHeight == lHeight) {
      rect(x, y, shapeWidth, shapeHeight);
    } else if (shapeHeight == sHeight) {
      rect(x, y, shapeWidth, shapeHeight);
    }
    mouseBoolean = false;
  }
}

void mousePressed() {
  if(mouseButton == RIGHT) {
    shapeHeight = lHeight; 
    fill(0);
  } else if (mouseButton == LEFT) {
    shapeHeight = sHeight;
    fill(255);
  }
  mouseBoolean = true;
  x += shapeWidth;  
   if (x > width - shapeWidth) {
      x = 0;
      y += lHeight;
   }
   if (y > height - shapeHeight) {
      y = 0;
   }
  
}


void keyPressed() {
  if(key >= '0' && key <= '9') {
    int index;
    if (key <= '9') {
      index = key - '0';
      shapeHeight = lHeight; 
      fill(colorArray[index]);
    }
  } else {
    fill(255);
    shapeHeight = sHeight;
  } 
    letterBoolean = true; 
    x += shapeWidth;
    
    if (x > width - shapeWidth) {
      x = 0;
      y += lHeight;
    }
    if (y > height - shapeHeight) {
      y = 0;
    }
}
