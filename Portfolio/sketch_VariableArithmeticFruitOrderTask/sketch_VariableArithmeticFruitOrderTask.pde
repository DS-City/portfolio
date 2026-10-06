void setup() {
  size(800,800);
}

void draw() {
  background(200,200,200);
  int numberOfStudents = mouseX;
  int fruitPerStudent = 25;
  int numberOfFruit = numberOfStudents * fruitPerStudent;
  
  textAlign(CENTER,CENTER);
  textSize(50);
  text("Number of students: " + (numberOfStudents), 400, 400);
  text("Number of fruit: " + (numberOfFruit), 400, 300);
}
