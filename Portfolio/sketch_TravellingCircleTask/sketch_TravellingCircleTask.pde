float x = 300;
float y = 300;

void setup() {
  size(600, 600);

  background(200, 200, 200);
  ellipse(x, y, 60, 60);
}

void draw() {
  ellipse(x++, y--, 60, 60);

}
