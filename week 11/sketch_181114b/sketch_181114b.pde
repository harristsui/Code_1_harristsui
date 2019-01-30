String letters = "";
Word w;
Word S;
ArrayList<Word> myArray;

void setup() {
  size(600, 600);
  background(0);
  w = new Word(50, 50, "hello!");
  myArray = new ArrayList<Word>();
}

void draw() {

  text(letters, width/2, 50);
  }

void keyPressed() {
   if ((key == ENTER) || (key == RETURN)) {
     Word S = new Word (50, 70, letters);
     myArray.add(S);
   } else if ((key > 31) && (key != CODED)){
     letters = letters + key;
   }
} 


class Word {
  String theWord;
  float x, y;
  
  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    text(theWord, x, y);
  }
  void display1() {
    text(theWord, x, y);
  }
  void update() {
    x += 10;
    if(x > width) {
      x = 0;
      y += 20; 
    }
  }
}
