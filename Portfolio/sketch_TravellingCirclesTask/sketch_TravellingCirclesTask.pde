float x = 300, x1 = 300, x2 = 300, x3 = 300;
float y = 300, y1 = 300, y2 = 300, y3 = 300;


void setup() {
  size(600, 600);

  background(200, 200, 200);
  ellipse(x, y, 60, 60);
}

void draw() {
  ellipse(x++, y--, 60, 60);
  ellipse(x1++, y1++, 60, 60);
  ellipse(x2--, y2--, 60, 60);
  ellipse(x3--, y3++, 60, 60);

}
