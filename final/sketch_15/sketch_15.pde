/*
this sketch draws whatever alphanumeric key was 
last pressed while a key is held down.

replace the use of the keyPressed variable completely
with the function keyPressed(), while keeping the 
same behavior.
*/

void setup() {
  size(600, 600); 
  textSize(128);
  fill(0);
  textAlign(CENTER, CENTER);
  frameRate(30);
}

void draw() {
  background(255);
}
 


  
  
void keyPressed() {  
  text(key, width/2, height/2);
}
