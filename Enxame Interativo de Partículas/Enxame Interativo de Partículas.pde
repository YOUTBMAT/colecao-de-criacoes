ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 200; i++) {
    particles.add(new Particle(random(width), random(height)));
  }
}

void draw() {
  fill(5, 5, 12, 40);
  rect(0, 0, width, height);
  
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

class Particle {
  PVector pos, vel, acc;
  float maxSpeed = 5;
  
  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = PVector.random2D();
    acc = new PVector(0, 0);
  }
  
  void update() {
    PVector target = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(target, pos);
    dir.setMag(0.3);
    acc = dir;
    
    vel.add(acc);
    vel.limit(maxSpeed);
    pos.add(vel);
  }
  
  void display() {
    noStroke();
    fill(0, 220, 255, 200);
    ellipse(pos.x, pos.y, 6, 6);
  }
}
