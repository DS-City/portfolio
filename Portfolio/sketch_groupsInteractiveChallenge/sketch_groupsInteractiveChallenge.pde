float[] xps = new float[100];
float[] yps = new float[100];
int pickedCircle;

void setup() {
  size(400, 400);
  pickedCircle = -1;
  for (int i = 0; i < xps.length; i++ ) {
    xps[i] = random(0, 400);
    yps[i] = random(0, 400);
  }
}

void draw() {
  background(250);
  for (int i = 0; i < xps.length; i++ ) {
    fill(#1BA8DE);
    circle(xps[i], yps[i], 30);
  }
}

void mousePressed() {
  for (int i = 0; i < xps.length; i++ ) {
    if (dist(mouseX, mouseY, xps[i], yps[i]) < 15) {
      pickedCircle = i;
      fill(#1BA8DE);
      circle(xps[i], yps[i], 30);
    }
  }
}

void mouseReleased() {
  if (pickedCircle != -1) {
    xps[pickedCircle] = mouseX;
    yps[pickedCircle] = mouseY;
    pickedCircle = -1;
  }
}
