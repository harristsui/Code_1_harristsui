Ball ball;
Paddle p1;
Paddle p2;

boolean p1up, p1down, p2up, p2down;
int score1;
int score2;
int i;


void keyPressed() {
  if (key != CODED) {
    if (key == 'w') {
      p1up = true;
    } else if (key == 's') {
      p1down = true;
    }
  } else {
    if (keyCode == UP) {
      p2up = true;
    } else if (keyCode == DOWN) {
      p2down = true;
    }
  }
}

void keyReleased() {
  if (key != CODED) {
    if (key == 'w') {
      p1up = false;
    } else if (key == 's') {
      p1down = false;
    }
  } else {
    if (keyCode == UP) {
      p2up = false;
    } else if (keyCode == DOWN) {
      p2down = false;
    }
  }
}

void setup() {
  size(1000, 600);
  ball = new Ball();
  p1 = new Paddle(1);
  p2 = new Paddle(2);
  frameRate(240);
}

void draw() {
  background(0);
  ball.update();
  ball.display();

  p1.update(p1up, p1down);
  p2.update1(width-75, ball.pos.y - p2.h / 2);
  
  
  if (score1 < score2) {
    fill(0, 255, 0);
    p2.display1();
    fill((map(noise(frameRate), 0, 1, 0, 255)), 0, 0);
    p1.display();
  } else if (score1 == score2) {
   fill(255);
   p1.display();
   p2.display1();  
  }

  ball.checkCollision(p1);
  ball.checkCollision1(p2);   

  drawCenterLine();
  drawScore();
  drawK();
}

void drawScore() {
  textSize(64);
  textAlign(CENTER, CENTER);
  
  
  if ( score1 > score2) {
    fill(255, 0, 0);
    text(score2, 3*width/4, height/8); 
    fill(0, 0, 255);
    text(score1, width/4, height/8);
  } else if ( score2 > score1 ){
    fill(255, 0, 0);
    text(score1, width/4, height/8);
    fill(0, 255, 0);
    text(score2, 3*width/4, height/8);
  } else {
    fill(255);
    text(score1, width/4, height/8);
    text(score2, 3*width/4, height/8);
  } 
}


void drawCenterLine() {
  rectMode(CENTER);
  fill(255);
  for (int i = 0; i < height; i+=30) {
    rect(width/2, i, 15, 15);
  }
}

void drawK() {
  float i = int(frameCount%256);
  println(frameCount);
  fill(i, 255, 255);
  textSize(60);
  textAlign(CENTER, TOP);
  text("MR.K 0.01", 150, -10);
  
}
