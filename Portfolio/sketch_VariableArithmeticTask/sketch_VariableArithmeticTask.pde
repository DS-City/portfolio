void setup() {
  size(800,800);
}

void draw() {
  background(200,200,200);
  float numberOfStudents = mouseX;
  
  textAlign(CENTER,CENTER);
  textSize(50);
  text("Number of students: " + (numberOfStudents), 400, 400);
}
