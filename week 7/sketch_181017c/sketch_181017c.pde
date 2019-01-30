ArrayList<Generator> generators;
Generator a;
void setup() {
  size(800, 800);
  generators = new ArrayList<Generator>();    
  
}

void draw() {
  background(30);
  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
}

void mousePressed() {
  generators.add(new Generator(mouseX, mouseY));
}

class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float opa;

  Particle(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-2, 2);
    this.velY = random(-5, 5);
    life = 50;
    opa = 100;
  }

  void display() {
    noStroke();
    fill(255, 0, 0, opa);
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life--;
    opa--;
    this.posX += this.velX;
    this.posY += -abs(this.velY);
    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      this.velX *= -1;
    }
    if (this.posY > height || this.posY < 0) {
      this.velY *= -1;
    }
  }
}

class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 

  Generator(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    particles = new ArrayList<Particle>();
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
        particles.remove(i);
      }
    }
  }
}
