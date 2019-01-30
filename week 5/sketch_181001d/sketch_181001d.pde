void setup() {
  size(600, 600);
  noStroke();

}

void draw() {
  background(150);
  int[] arr = {100, 200, 300, 400, 500};
  for(int i = 0; i< arr.length; i++){
    ellipse(arr[i], height/2, 70, 70);  
  }
}
