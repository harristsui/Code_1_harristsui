void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  if (mouseX < width/2 && mouseY < height/2) {
    fill(255);
  } else {
    fill(229, 107, 107);
  }
  rect(0, 0, width/2, height/2);

  if (mouseX < width/2 && mouseY > height/2) {
    fill(255);
  } else {
    fill(107, 229, 107);
  }
  rect(0, height/2, width/2, height/2);
  
  if (mouseX > width/2 && mouseY < height/2) {
    fill(115);
  } else {
    fill (215);
  }
  rect(width/2, 0, width/2, height/2);
  
  if(mouseX > width/2 && mouseY > height/2) {
    fill (255,123,42);
  } else {
    fill(0);
  }
  rect(width/2, height/2, width/2, height/2);
  
} 
