float scale = 0.008;

void setup() {
  size(800, 600);
  background(10, 10, 20);
}

void draw() {
  fill(10, 10, 20, 15); // Efeito de rastro/transparência
  rect(0, 0, width, height);
  
  for (int x = 10; x < width; x += 20) {
    for (int y = 10; y < height; y += 20) {
      float angle = noise(x * scale, y * scale, frameCount * 0.005) * TWO_PI * 2;
      float x2 = x + cos(angle) * 15;
      float y2 = y + sin(angle) * 15;
      
      stroke(map(x, 0, width, 100, 255), map(y, 0, height, 100, 255), 255, 180);
      strokeWeight(1.5);
      line(x, y, x2, y2);
    }
  }
}
