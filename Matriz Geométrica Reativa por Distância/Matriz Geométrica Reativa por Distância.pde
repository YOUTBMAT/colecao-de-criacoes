void setup() {
  size(800, 600);
  rectMode(CENTER);
}

void draw() {
  background(18);
  
  for (int x = 25; x < width; x += 35) {
    for (int y = 25; y < height; y += 35) {
      float d = dist(mouseX, mouseY, x, y);
      float angle = map(d, 0, width, TWO_PI, 0);
      float size = map(d, 0, width, 30, 5);
      
      pushMatrix();
      translate(x, y);
      rotate(angle + frameCount * 0.02);
      noFill();
      stroke(map(d, 0, width, 255, 50), 120, 255);
      strokeWeight(1.5);
      rect(0, 0, size, size);
      popMatrix();
    }
  }
}
