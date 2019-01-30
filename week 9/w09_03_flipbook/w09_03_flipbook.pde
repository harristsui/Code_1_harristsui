// code 1 FA 18
// bryan ma

// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.
 
// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

int numFrames = 12;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
Img img1;
    
void setup() {
  size(640, 360);
  frameRate(24);
  imageMode(CENTER);
  img1 = new Img();


} 
 
void draw() { 
  background(0);
  img1.display();  
  img1.update();
  
 }
 
class Img {
  float x;
  float y;
  PImage[] frames;
  int numFrames;
  int currentFrame;
  
  Img () {
    numFrames = 5;
    currentFrame = 0;
    frames = new PImage[numFrames];
     for (int i = 0; i < numFrames; i++) 
  {
    frames[i] = loadImage("PT_anim000" + i + ".gif");
  }
    
    
  }
  
  void display() {
    image(frames[currentFrame], width/2, height/2);
 
    
  }
  void update() {
    currentFrame = (currentFrame+1) % numFrames;
    
  }
  
  
  
  
  
  
}
 
 
 
 
 
 
