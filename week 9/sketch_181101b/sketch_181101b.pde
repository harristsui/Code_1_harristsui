String[] arrayOfImageFilenames = new String [6];
PImage[] arrayOfPImages = new PImage[6];

void setup() {
  size(1000, 1000);
  background(255);
  imageMode(CENTER);
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfImageFilenames[i] = ("image" + i + ".jpg"); 
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);    
  }
}

void draw() {
  for(int i = 0; i < arrayOfImageFilenames.length; i++) {
    float x = map(i, 0, arrayOfImageFilenames.length, 100, width + 100);
  image(arrayOfPImages[i], x, height/2, 200, 200);
  }
}
