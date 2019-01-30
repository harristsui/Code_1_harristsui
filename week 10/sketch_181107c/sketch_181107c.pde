PImage img;

void setup() {
  size(1340, 1802);
  img = loadImage("hi.jpg");
  background(255);
  noStroke();
  
}

void draw() {
  for(int i = 0; i < img.width; i+=1) {
    for(int j = 0; j < img.height; j+=1) {
      color c = img.get(i, j);
      fill((c)); 
      rectMode(CENTER);
      rect(i, j, 10, 10);
    }
  }
  
    for(int i = 0; i < img.width; i+=10) {
    for(int j = 0; j < img.height; j+=10) {
      if(i > 250 && i < 750 && j > 250 && j < 750) {             
        color c = img.get(i, j);
        fill(brightness(c));      
        rect(i, j, 10, 10);

      }
    }
  }

}
