float x, y, r;       // <-- variables define the shape
boolean isYellow, isRed, isCyan, isInside, showMousePos;   // <-- variables capture the state
int ellipseColor, backgroundColor;

void setup () {
  size(600, 600);
  backgroundColor = 250;
  x = random(width*0.1, width*0.9); // <-- position in x is random, not at edge
  y = random(width*0.1, width*0.9); // <-- position in y is random, not at edge
  r = random(40, 80);                // <-- radius is random, not tiny, not huge
}

void draw () {
  background(backgroundColor);
  // -- if inside : circle isOrange :
  
  if (dist(mouseX, mouseY, x, y) <= r/2) {
    isCyan = true; 
    isInside = true;
  } else {
    ellipseColor = 0;
    isInside = false;
  }
  noStroke();
  fill(ellipseColor);
  ellipse (x, y, r, r);
}

void mouseClicked() {
  // -- move ellipse - to mouseY,mouseX

  // -- if inside : isRed
  if (isInside) {
    ellipseColor = #F20531;
    isRed = true;
  }
}

void mousePressed() {
  // -- background isYellow
  isYellow = true;
}

void mouseReleased() {
  isYellow = false;
}

void mouseMoved() {
  // -- showMousePos
  // -- isInside?
}

void mouseDragged() {
  // -- move ellipse : to mouseX,mouseY
}

void setColor() {
  if (isCyan) {
    ellipseColor = #14CDE0;
  }
  if (isRed) {
    ellipseColor = #F20531;
  }
  if (isYellow) {
    backgroundColor = #F1F205;
  } else {
    backgroundColor = 250;
  }

}
