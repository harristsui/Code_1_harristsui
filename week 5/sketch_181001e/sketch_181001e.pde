void setup() {
  size(1000, 1000);
  noStroke();          
}
 
  
  


void draw() {
  int[] circle = {290 , 591, 392, 203, 693};
  int[] circle1 = {342, 235, 543,123, 245, 768};
  for (int i = 0; i < circle.length; i++) {   
     ellipse (circle[i]+200, circle1[i], 50, 50);
  }
}
   
    
  
  
 
