float x;
float y;


void setup() {
  size(200, 300);
  x = random(0, 200);
  y = random(0, 300);
}

void draw() {
  background(200, 200, 200);
  fill(255,255,255);
  circle(x, y, 50);
  
}
